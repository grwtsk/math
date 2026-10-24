# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListProd.Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.AddCon.coe_dfinsuppSumAddHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b1348c5-12bc-a89f-8042-5da2dd9b24a6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListProd.Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.AddCon.coe_dfinsuppSumAddHom",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-listprod-variantca15f989--808a754caa018dcced7999b4",
  "source": {
    "blob": "ff71a1888717e39f9f10f8cabaa2e5eca6a6528e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantae5061b600382aa485460ee904e984f37243bf17b5f04e983cdc3c1034f2e8b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:808a754caa018dcced7999b40d92248685a5979335e62bae42b2b79602380a7e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantae5061b600382aa485460ee904e984f37243bf17b5f04e983cdc3c1034f2e8b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b1348c5-12bc-a89f-8042-5da2dd9b24a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListProd.Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.AddCon.coe_dfinsuppSumAddHom {ι : Type*} {β : ι → Type*} {M : Type*}
    [DecidableEq ι] [AddCommMonoid M] [∀ i, AddCommMonoid (β i)]
    (c : AddCon M) (h : (i : ι) → β i →+ M) (f : Π₀ i, β i) :
    (↑(f.sumAddHom h) : c.Quotient) = f.sumAddHom fun i => (AddCon.mk' c).comp (h i) := by
  classical
  simp_rw [← AddCon.coe_mk', DFinsupp.sumAddHom_apply, map_dfinsuppSum]
  rfl

@[deprecated (since := "2026-04-08")]
protected alias _root_.AddCon.finset_sum := AddCon.finsetSum

@[to_additive existing, deprecated (since := "2026-04-08")]
protected alias finset_prod := Con.finsetProd

end Con
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantae5061b600382aa485460ee904e984f37243bf17b5f04e983cdc3c1034f2e8b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantae5061b600382aa485460ee904e984f37243bf17b5f04e983cdc3c1034f2e8b7.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff71a1888717e39f9f10f8cabaa2e5eca6a6528e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
