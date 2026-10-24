# homotopyPToId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d2f9547b65116e80986a972287622acc675d96da346c1f123a467f13803af7b",
  "kind": "def",
  "lexical_name": "homotopyPToId",
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
  "slug": "homotopyptoid--ec6ccb5e7616747ee0b79cef",
  "source": {
    "blob": "ab28bfbee6d21a8f6a151b3a86b9b7e94f35428f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 37,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Varianteacea2b6d09c6c0149a37e56e103eb03a0581efb122bf4164d4bd931c8c50e01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec6ccb5e7616747ee0b79cefe5d4d690fec849945f14735a6d646be53ff6a280",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyEquivalence/Varianteacea2b6d09c6c0149a37e56e103eb03a0581efb122bf4164d4bd931c8c50e01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d2f9547b65116e80986a972287622acc675d96da346c1f123a467f13803af7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homotopyPToId : ∀ q : ℕ, Homotopy (P q : K[X] ⟶ _) (𝟙 _)
  | 0 => Homotopy.refl _
  | q + 1 => by
    refine
      Homotopy.trans (Homotopy.ofEq ?_)
        (Homotopy.trans
          (Homotopy.add (homotopyPToId q) (Homotopy.compLeft (homotopyHσToZero q) (P q)))
          (Homotopy.ofEq ?_))
    · simp only [P_succ, comp_add, comp_id]
    · simp only [add_zero, comp_zero]

/-- The complement projection `Q q` to `P q` is homotopic to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyEquivalence/Varianteacea2b6d09c6c0149a37e56e103eb03a0581efb122bf4164d4bd931c8c50e01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Varianteacea2b6d09c6c0149a37e56e103eb03a0581efb122bf4164d4bd931c8c50e01.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab28bfbee6d21a8f6a151b3a86b9b7e94f35428f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
