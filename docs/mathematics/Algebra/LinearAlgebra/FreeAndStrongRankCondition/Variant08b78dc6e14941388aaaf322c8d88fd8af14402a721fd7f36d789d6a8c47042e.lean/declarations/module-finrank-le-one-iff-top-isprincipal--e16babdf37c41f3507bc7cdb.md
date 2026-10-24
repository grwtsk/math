# Module.finrank_le_one_iff_top_isPrincipal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dfa7f20-5bce-6133-e115-6886609e0c41",
  "kind": "theorem",
  "lexical_name": "Module.finrank_le_one_iff_top_isPrincipal",
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
  "slug": "module-finrank-le-one-iff-top-isprincipal--e16babdf37c41f3507bc7cdb",
  "source": {
    "blob": "6d2d5ffffaeef593b7b7ca140c440764ffc2015d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e16babdf37c41f3507bc7cdb6af4c4bb4a43ade2fccd40fd852141eefabe0c25",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dfa7f20-5bce-6133-e115-6886609e0c41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.finrank_le_one_iff_top_isPrincipal [Module.Free K V] [Module.Finite K V] :
    finrank K V ≤ 1 ↔ (⊤ : Submodule K V).IsPrincipal := by
  rw [← Module.rank_le_one_iff_top_isPrincipal, ← finrank_eq_rank, Nat.cast_le_one]

variable (K V) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2d5ffffaeef593b7b7ca140c440764ffc2015d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
