# holomorphic_iff_restrictions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc59bf3e2575b9ff46c26632d7833f4d105a309b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/Analysis/Complex/HolomorphicOpenCoverGluing.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12136523-41b1-55a4-5f2c-80895f8cd016",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd4be185-f025-81ef-ba77-630a5bc21d8a",
  "kind": "theorem",
  "lexical_name": "holomorphic_iff_restrictions",
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
  "slug": "holomorphic-iff-restrictions--ddbc7e4ece6525a1704d9d32",
  "source": {
    "blob": "fc59bf3e2575b9ff46c26632d7833f4d105a309b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 39,
    "path": "GRWTSK/Analysis/Complex/HolomorphicOpenCoverGluing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddbc7e4ece6525a1704d9d32f25cec74ca754af03e9f4aa994ba07cbeaf2ccfb",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd4be185-f025-81ef-ba77-630a5bc21d8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem holomorphic_iff_restrictions (D : BinaryDomainCover)
    (hOpen : D.IsOpenCover) (f : Section D.X) :
    ExtendsHolomorphically D.X f ↔
      ExtendsHolomorphically D.U (system.map D.xToU f) ∧
      ExtendsHolomorphically D.V (system.map D.xToV f) := by
  constructor
  · intro hf
    exact ⟨(HolomorphicRestrictionCertificate.canonical D.xToU).preserves f hf,
      (HolomorphicRestrictionCertificate.canonical D.xToV).preserves f hf⟩
  · rintro ⟨⟨F, hF, hF_eq⟩, ⟨G, hG, hG_eq⟩⟩
    have hFU : DifferentiableOn ℂ (ambientRepresentative D.X f) D.U.carrier := by
      apply hF.congr
      intro z hz
      calc
        ambientRepresentative D.X f z = f ⟨z, D.u_subset hz⟩ :=
          ambientRepresentative_apply D.X f z (D.u_subset hz)
        _ = F z := (hF_eq ⟨z, hz⟩).symm
    have hGV : DifferentiableOn ℂ (ambientRepresentative D.X f) D.V.carrier := by
      apply hG.congr
      intro z hz
      calc
        ambientRepresentative D.X f z = f ⟨z, D.v_subset hz⟩ :=
          ambientRepresentative_apply D.X f z (D.v_subset hz)
        _ = G z := (hG_eq ⟨z, hz⟩).symm
    refine ⟨ambientRepresentative D.X f,
      (hFU.union_of_isOpen hGV hOpen.left_open hOpen.right_open).mono D.cover, ?_⟩
    intro z
    exact ambientRepresentative_apply D.X f z.1 z.2

/-- The analytic certificate is derived from the local witnesses and openness; it is not an
extra assumption or an alias for its own global conclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicOpenCoverGluing.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc59bf3e2575b9ff46c26632d7833f4d105a309b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
