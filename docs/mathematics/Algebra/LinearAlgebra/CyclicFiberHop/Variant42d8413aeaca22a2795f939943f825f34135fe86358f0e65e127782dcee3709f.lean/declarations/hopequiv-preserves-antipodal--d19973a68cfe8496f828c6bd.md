# hopEquiv_preserves_antipodal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:886eccd3-9e51-48bc-4341-4bfe6f951170",
  "kind": "theorem",
  "lexical_name": "hopEquiv_preserves_antipodal",
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
  "slug": "hopequiv-preserves-antipodal--d19973a68cfe8496f828c6bd",
  "source": {
    "blob": "df0b8e179f907e9983170f50c5db8fae6dcf5693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 300,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d19973a68cfe8496f828c6bd153ab3211faac8779a2afb302c2652fa4f9c741d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:886eccd3-9e51-48bc-4341-4bfe6f951170`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hopEquiv_preserves_antipodal (system : StepSystem h)
    {value : Section3 h} (hvalue : IsAntipodal value) :
    IsAntipodal (hopEquiv system value) := by
  intro phase
  change
    system.step (predecessor h (antipode h phase))
        (value (predecessor h (antipode h phase))) =
      -system.step (predecessor h phase) (value (predecessor h phase))
  rw [predecessor_commutes_antipode, system.half_compatible,
    hvalue]
  exact map_neg (system.step (predecessor h phase)) _

end StepSystem

/-! ## The honest `S₃` permutation specialization -/

/-- Reindex the three input coordinates by a permutation. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0b8e179f907e9983170f50c5db8fae6dcf5693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
