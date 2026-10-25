# solverChoiceRepresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0410d284d78af4e7a2596e03f2879f3acbd7196c33d2003a5cf7c33e6c124507",
  "kind": "def",
  "lexical_name": "solverChoiceRepresentation",
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
  "slug": "solverchoicerepresentation--4309003297a8ef86962f8647",
  "source": {
    "blob": "659efd7cb1c144edeeaea34e9fe41fd752524ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant0c32d83440d78ecda73052bda7e17ea407cde5ed688fdc6ff151519e6d5aed9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4309003297a8ef86962f8647026e9d8f9d0054c0590e03ea8dfc8d5dd9a70472",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant0c32d83440d78ecda73052bda7e17ea407cde5ed688fdc6ff151519e6d5aed9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0410d284d78af4e7a2596e03f2879f3acbd7196c33d2003a5cf7c33e6c124507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solverChoiceRepresentation
    (Q : PhaseIIResidualQuotient G) :
    SufficientRepresentation (phaseIIResidualCertificateFamily G) where
  carrier := Unit
  compress := fun _ => ()
  recover := fun uv _ => Q.geometry.form uv.1 uv.2
  recover_compress := by
    intro uv S
    exact Q.representative.schur_pairing_independent S uv.1 uv.2

/-- The one-point solver-choice representation is minimal among all exact
sufficient representations of the Phase-II residual certificates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant0c32d83440d78ecda73052bda7e17ea407cde5ed688fdc6ff151519e6d5aed9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant0c32d83440d78ecda73052bda7e17ea407cde5ed688fdc6ff151519e6d5aed9c.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `659efd7cb1c144edeeaea34e9fe41fd752524ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
