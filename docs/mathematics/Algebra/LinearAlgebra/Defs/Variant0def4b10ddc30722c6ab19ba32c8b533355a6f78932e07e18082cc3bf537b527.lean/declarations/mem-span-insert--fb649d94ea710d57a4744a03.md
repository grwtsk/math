# mem_span_insert'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbdd7052-08e5-1a29-8d22-55554a8e0959",
  "kind": "theorem",
  "lexical_name": "mem_span_insert'",
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
  "slug": "mem-span-insert--fb649d94ea710d57a4744a03",
  "source": {
    "blob": "5cbc952388035aacbf1dd73f4d9d56feb0e66559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 640,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb649d94ea710d57a4744a030cf27d356929a23b49dfbf3a849b25485ed88778",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbdd7052-08e5-1a29-8d22-55554a8e0959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_span_insert' {x y} {s : Set M} :
    x ∈ span R (insert y s) ↔ ∃ a : R, x + a • y ∈ span R s := by
  rw [mem_span_insert]; constructor
  · rintro ⟨a, z, hz, rfl⟩
    exact ⟨-a, by simp [hz, add_assoc]⟩
  · rintro ⟨a, h⟩
    exact ⟨-a, _, h, by simp [add_comm]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant0def4b10ddc30722c6ab19ba32c8b533355a6f78932e07e18082cc3bf537b527.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cbc952388035aacbf1dd73f4d9d56feb0e66559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
