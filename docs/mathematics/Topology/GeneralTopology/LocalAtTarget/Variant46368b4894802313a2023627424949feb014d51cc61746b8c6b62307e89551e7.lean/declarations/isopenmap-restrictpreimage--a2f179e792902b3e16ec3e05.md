# IsOpenMap.restrictPreimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fed1ead-eb93-cd0b-924b-cffed99188b5",
  "kind": "theorem",
  "lexical_name": "IsOpenMap.restrictPreimage",
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
  "slug": "isopenmap-restrictpreimage--a2f179e792902b3e16ec3e05",
  "source": {
    "blob": "0ad3e2371bc619127432213694d3da7c0465c1d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2f179e792902b3e16ec3e05e31caf9024aff75fcc99c0e902b6f6142915c7ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fed1ead-eb93-cd0b-924b-cffed99188b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpenMap.restrictPreimage (H : IsOpenMap f) (s : Set β) :
    IsOpenMap (s.restrictPreimage f) := by
  intro t
  suffices ∀ u, IsOpen u → Subtype.val ⁻¹' u = t →
    ∃ v, IsOpen v ∧ Subtype.val ⁻¹' v = s.restrictPreimage f '' t by
      simpa [isOpen_induced_iff]
  exact fun u hu e => ⟨f '' u, H u hu, by simp [← e, image_restrictPreimage]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad3e2371bc619127432213694d3da7c0465c1d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
