# basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4570b20c1236e4763356d6f9a7812ef0298bbeb924a72971c41bf3eba4cfb7e",
  "kind": "def",
  "lexical_name": "basis",
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
  "slug": "basis--c1bc5c28a9c5e36d6833d9d1",
  "source": {
    "blob": "22dbbacde8046d5b20475335eb6e0c73e44dafaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 152,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1bc5c28a9c5e36d6833d9d11fb8cc9e6c0fda32ae67ec630175319625bc5a02",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4570b20c1236e4763356d6f9a7812ef0298bbeb924a72971c41bf3eba4cfb7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def basis : Basis (Free.ChooseBasisIndex ℤ (𝓞 K)) ℤ (𝓞 K) :=
  Free.chooseBasis ℤ (𝓞 K)
#align number_field.ring_of_integers.basis NumberField.RingOfIntegers.basis

end RingOfIntegers

/-- A basis of `K` over `ℚ` that is also a basis of `𝓞 K` over `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22dbbacde8046d5b20475335eb6e0c73e44dafaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
