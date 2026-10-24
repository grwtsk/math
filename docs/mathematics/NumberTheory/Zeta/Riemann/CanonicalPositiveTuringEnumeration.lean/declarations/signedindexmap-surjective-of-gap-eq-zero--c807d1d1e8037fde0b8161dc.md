# signedIndexMap_surjective_of_gap_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cab01fd6-b31d-e23f-8189-2cace26c00be",
  "kind": "theorem",
  "lexical_name": "signedIndexMap_surjective_of_gap_eq_zero",
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
  "slug": "signedindexmap-surjective-of-gap-eq-zero--c807d1d1e8037fde0b8161dc",
  "source": {
    "blob": "2b8ecdbeb2421fa84206d7e1676f1dc24a5b3369",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 160,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c807d1d1e8037fde0b8161dc3af50dc7f638a29c7c70e1d55d6f7ffcfcc9f764",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cab01fd6-b31d-e23f-8189-2cace26c00be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedIndexMap_surjective_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    Function.Surjective (signedIndexMap packet) := by
  classical
  intro z
  have hz : z.1 ∈ fullKnownPoints packet := by
    rw [packet.fullKnownPoints_eq_heightHead_of_gap_eq_zero zeroGap]
    exact z.2
  rcases Finset.mem_union.mp hz with hpos | hneg
  · rcases (packet.alignment.mem_knownPoints z.1).mp hpos with ⟨i, hi⟩
    refine ⟨Sum.inl i, ?_⟩
    apply Subtype.ext
    simpa [signedIndexMap] using hi
  · rcases Finset.mem_image.mp hneg with ⟨w, hw, hwz⟩
    rcases (packet.alignment.mem_knownPoints w).mp hw with ⟨i, hi⟩
    refine ⟨Sum.inr i, ?_⟩
    apply Subtype.ext
    calc
      (signedIndexMap packet (Sum.inr i)).1 =
          conjugated (packet.alignment.point i) := rfl
      _ = conjugated w := congrArg conjugated hi
      _ = z.1 := hwz

/-- A zero-gap packet enumerates the complete bounded divisor by two signed copies
of its positive record index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b8ecdbeb2421fa84206d7e1676f1dc24a5b3369` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
