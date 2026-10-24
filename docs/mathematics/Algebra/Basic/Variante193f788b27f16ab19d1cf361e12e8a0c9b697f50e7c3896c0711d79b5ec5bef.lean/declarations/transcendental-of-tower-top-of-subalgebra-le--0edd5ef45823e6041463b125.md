# Transcendental.of_tower_top_of_subalgebra_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abea6814-4948-fb70-0ef4-cb865484f2ad",
  "kind": "theorem",
  "lexical_name": "Transcendental.of_tower_top_of_subalgebra_le",
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
  "slug": "transcendental-of-tower-top-of-subalgebra-le--0edd5ef45823e6041463b125",
  "source": {
    "blob": "965e9965ffaf7a90d74c43cbb8b7f0999ebf51ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 434,
    "path": "GRWTSK/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0edd5ef45823e6041463b12566149ebe96118e9fdf87d1381583993423d422c9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abea6814-4948-fb70-0ef4-cb865484f2ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Transcendental.of_tower_top_of_subalgebra_le
    {A B : Subalgebra R S} (hle : A ≤ B) {x : S}
    (h : Transcendental B x) : Transcendental A x :=
  fun H ↦ h (H.tower_top_of_subalgebra_le hle)

/-- If A is an algebraic algebra over R, then A is algebraic over S when S is an extension of R,
  and the map from `R` to `S` is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965e9965ffaf7a90d74c43cbb8b7f0999ebf51ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
