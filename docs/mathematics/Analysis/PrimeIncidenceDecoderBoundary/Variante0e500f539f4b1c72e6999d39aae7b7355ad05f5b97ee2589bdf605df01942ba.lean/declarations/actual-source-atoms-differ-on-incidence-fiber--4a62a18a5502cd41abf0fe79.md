# actual_source_atoms_differ_on_incidence_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4587e222-f600-6737-67f1-68c9f076ac3b",
  "kind": "theorem",
  "lexical_name": "actual_source_atoms_differ_on_incidence_fiber",
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
  "slug": "actual-source-atoms-differ-on-incidence-fiber--4a62a18a5502cd41abf0fe79",
  "source": {
    "blob": "93842453ac8e2cd9ab3a932c2aa42ca54cfd18ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 97,
    "path": "GRWTSK/Analysis/PrimeIncidenceDecoderBoundary/Variante0e500f539f4b1c72e6999d39aae7b7355ad05f5b97ee2589bdf605df01942ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a62a18a5502cd41abf0fe7945456e661075c51c33ed1c70b43586b5db5d9cd3",
  "verification": {
    "reference": "docs/verification/Analysis/PrimeIncidenceDecoderBoundary/Variante0e500f539f4b1c72e6999d39aae7b7355ad05f5b97ee2589bdf605df01942ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4587e222-f600-6737-67f1-68c9f076ac3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_atoms_differ_on_incidence_fiber {A : ℝ} (hA : 8 ≤ A) :
    actualAtom A 2 ≠ actualAtom A 3 := by
  have hn := actual_second_atom_negative hA
  have hp := actual_third_atom_positive hA
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimeIncidenceDecoderBoundary/Variante0e500f539f4b1c72e6999d39aae7b7355ad05f5b97ee2589bdf605df01942ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimeIncidenceDecoderBoundary/Variante0e500f539f4b1c72e6999d39aae7b7355ad05f5b97ee2589bdf605df01942ba.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93842453ac8e2cd9ab3a932c2aa42ca54cfd18ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
