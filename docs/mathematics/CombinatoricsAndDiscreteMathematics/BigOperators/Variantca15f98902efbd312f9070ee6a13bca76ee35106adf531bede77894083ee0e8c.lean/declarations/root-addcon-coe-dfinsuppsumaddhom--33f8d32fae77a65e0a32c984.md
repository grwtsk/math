# _root_.AddCon.coe_dfinsuppSumAddHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8884146e75fabbd228710901fb1327a580d2027",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:351e192d-6410-33a4-9e3d-8e5746e8af61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe4c4bd1-9d97-ed53-dd1e-7ce2cebee42a",
  "kind": "theorem",
  "lexical_name": "_root_.AddCon.coe_dfinsuppSumAddHom",
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
  "slug": "root-addcon-coe-dfinsuppsumaddhom--33f8d32fae77a65e0a32c984",
  "source": {
    "blob": "f8884146e75fabbd228710901fb1327a580d2027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33f8d32fae77a65e0a32c9843f8d1393e1aeed785d8361982d983145958c454e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe4c4bd1-9d97-ed53-dd1e-7ce2cebee42a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.AddCon.coe_dfinsuppSumAddHom {ι : Type*} {β : ι → Type*} {M : Type*}
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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8884146e75fabbd228710901fb1327a580d2027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
