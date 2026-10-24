# mulHom_ext'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fce5a261-2730-0e50-39ee-6e9144a6d124",
  "kind": "theorem",
  "lexical_name": "mulHom_ext'",
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
  "slug": "mulhom-ext--97eecb465e9ffa840828caab",
  "source": {
    "blob": "48d766846d8cdcee9a6775fe02483db329ea9f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 74,
    "path": "GRWTSK/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97eecb465e9ffa840828caabafc16c8d53eab0c0c056aabb8d60225505a2bf4d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fce5a261-2730-0e50-39ee-6e9144a6d124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulHom_ext' [MulOneClass N] {f g : Multiplicative (α →₀ M) →* N}
    (H : ∀ x, f.comp (AddMonoidHom.toMultiplicative (singleAddHom x)) =
              g.comp (AddMonoidHom.toMultiplicative (singleAddHom x))) :
    f = g :=
  mulHom_ext fun x => DFunLike.congr_fun (H x)

end Finsupp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48d766846d8cdcee9a6775fe02483db329ea9f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
