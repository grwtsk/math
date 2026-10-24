# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListProd.Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.AddCon.dfinsuppSumAddHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e6a80a3-cb67-049c-3dac-c2989581ccfa",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListProd.Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.AddCon.dfinsuppSumAddHom",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-listprod-variantca15f989--cdab3f62de1ecebc4b691075",
  "source": {
    "blob": "ff71a1888717e39f9f10f8cabaa2e5eca6a6528e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantae5061b600382aa485460ee904e984f37243bf17b5f04e983cdc3c1034f2e8b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdab3f62de1ecebc4b6910752fcec8670c3d6019ac9eddf1db2a6349e9d89591",
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

Occurrence: `result:8e6a80a3-cb67-049c-3dac-c2989581ccfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListProd.Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.AddCon.dfinsuppSumAddHom {ι : Type*} {β : ι → Type*} {M : Type*}
    [DecidableEq ι] [AddCommMonoid M] [∀ i, AddCommMonoid (β i)]
    (c : AddCon M) (h : (i : ι) → β i →+ M) (h' : (i : ι) → β i →+ M) {f g : Π₀ i, β i}
    (H : ∀ i, c (h i (f i)) (h' i (g i))) :
    c (f.sumAddHom h) (g.sumAddHom h') := by
  classical
  simp_rw [DFinsupp.sumAddHom_apply]
  exact c.dfinsuppSum _ _
    (bot_le (a := c) <| map_zero <| h ·) (bot_le (a := c) <| map_zero <| h' ·) H

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantae5061b600382aa485460ee904e984f37243bf17b5f04e983cdc3c1034f2e8b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantae5061b600382aa485460ee904e984f37243bf17b5f04e983cdc3c1034f2e8b7.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff71a1888717e39f9f10f8cabaa2e5eca6a6528e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
