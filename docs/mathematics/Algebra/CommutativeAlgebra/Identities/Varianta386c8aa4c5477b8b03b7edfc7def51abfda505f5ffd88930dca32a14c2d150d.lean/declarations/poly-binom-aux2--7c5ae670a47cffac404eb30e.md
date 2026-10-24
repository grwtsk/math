# poly_binom_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dabe6cd-43ba-fdd3-0b1c-6fc5c1297eb7",
  "kind": "theorem",
  "lexical_name": "poly_binom_aux2",
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
  "slug": "poly-binom-aux2--7c5ae670a47cffac404eb30e",
  "source": {
    "blob": "348b906c87bfff03619bd5e7ce63ef6c4fdb2b1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Identities/Varianta386c8aa4c5477b8b03b7edfc7def51abfda505f5ffd88930dca32a14c2d150d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c5ae670a47cffac404eb30e49b17a457849169d643f11a759af754d61bcd3df",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Identities/Varianta386c8aa4c5477b8b03b7edfc7def51abfda505f5ffd88930dca32a14c2d150d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dabe6cd-43ba-fdd3-0b1c-6fc5c1297eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem poly_binom_aux2 (f : R[X]) (x y : R) :
    f.eval (x + y) =
      f.sum fun e a => a * (x ^ e + e * x ^ (e - 1) * y + (polyBinomAux1 x y e a).val * y ^ 2) := by
  unfold eval; rw [eval₂_eq_sum]; congr with (n z)
  apply (polyBinomAux1 x y _ _).property

set_option backward.privateInPublic true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Identities/Varianta386c8aa4c5477b8b03b7edfc7def51abfda505f5ffd88930dca32a14c2d150d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Identities/Varianta386c8aa4c5477b8b03b7edfc7def51abfda505f5ffd88930dca32a14c2d150d.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `348b906c87bfff03619bd5e7ce63ef6c4fdb2b1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
