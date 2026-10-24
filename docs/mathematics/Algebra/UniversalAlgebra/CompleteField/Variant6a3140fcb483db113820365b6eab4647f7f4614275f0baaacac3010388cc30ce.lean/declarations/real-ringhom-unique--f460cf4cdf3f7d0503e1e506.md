# Real.RingHom.unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6ec6d8dd24ec98f587d5558b7e61521cfbb5d0c6d8367a622ef73c0ff646c7a",
  "kind": "instance",
  "lexical_name": "Real.RingHom.unique",
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
  "slug": "real-ringhom-unique--f460cf4cdf3f7d0503e1e506",
  "source": {
    "blob": "23c9f80a6cc53ef2243a1b103a73413a7f6e05d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 377,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f460cf4cdf3f7d0503e1e50633957e143ab7897d1a338437311d99c57437f49c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6ec6d8dd24ec98f587d5558b7e61521cfbb5d0c6d8367a622ef73c0ff646c7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Real.RingHom.unique : Unique (ℝ →+* ℝ) where
  default := RingHom.id ℝ
  uniq f := congr_arg OrderRingHom.toRingHom (@Subsingleton.elim (ℝ →+*o ℝ) _
      ⟨f, ringHom_monotone (fun r hr => ⟨Real.sqrt r, sq_sqrt hr⟩) f⟩ default)
#align real.ring_hom.unique Real.RingHom.unique

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c9f80a6cc53ef2243a1b103a73413a7f6e05d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
