# cf03_sieveAdmissibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:694e2f00-d665-0780-a482-fae20d130e52",
  "kind": "theorem",
  "lexical_name": "cf03_sieveAdmissibility",
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
  "slug": "cf03-sieveadmissibility--c2517153a2f22e1aacb9b823",
  "source": {
    "blob": "5af842ef5c158c72f718e879e85dcf99a1267cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF03SieveAdmissibility/Variant19c856b3fc5e9da6ec5fd387858f0961bc90619b2e87de9fa9ecadd0185e324b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2517153a2f22e1aacb9b823cba71d679c93a4e71606c999753f8c3bb376b579",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF03SieveAdmissibility/Variant19c856b3fc5e9da6ec5fd387858f0961bc90619b2e87de9fa9ecadd0185e324b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:694e2f00-d665-0780-a482-fae20d130e52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cf03_sieveAdmissibility
    (S : RealizationSystem)
    (M : ControlledPlaneModel S) :
    CF03Claim M := by
  exact {
    factoringClosed := M.sieve.closedUnderFactor
    admissibilityExact := by
      intro e
      rfl
    factorMorphTransported := by
      intro c f
      exact (M.sieveTransport c).factorMorph_commutes f
    acceptanceCorrespondence := by
      intro c m
      exact (M.sieveTransport c).acceptance_iff m
    furtherFactorPreserved := by
      intro c f g hFactor
      exact (M.sieveTransport c).furtherFactor_preserved hFactor
    occurrenceCorrespondence := by
      intro c e f
      exact (M.sieveTransport c).occurrence_iff e f
    admissibilityPreserved := by
      intro c e hAdmissible
      exact admissibleEdge_preserved_of_sieveTransport
        (M.sieveTransport c) hAdmissible
  }

end FCRS.ControlledPlane.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF03SieveAdmissibility/Variant19c856b3fc5e9da6ec5fd387858f0961bc90619b2e87de9fa9ecadd0185e324b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF03SieveAdmissibility/Variant19c856b3fc5e9da6ec5fd387858f0961bc90619b2e87de9fa9ecadd0185e324b.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af842ef5c158c72f718e879e85dcf99a1267cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
