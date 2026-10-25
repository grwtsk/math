# work_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed05e629-1921-da3f-dcfc-fb9f2adf21db",
  "kind": "theorem",
  "lexical_name": "work_lower_bound",
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
  "slug": "work-lower-bound--a0ae7d6e84a44b0bf8005c4c",
  "source": {
    "blob": "767bd06ad96652587f892dea12468ce3cfea5644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variantaff588e30c37a78dc226fca56ef74178c517e194ba178fddf158c770eb86b158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0ae7d6e84a44b0bf8005c4c74f7ab8dee1c6d3eb919cefddcab75e7f921796c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variantaff588e30c37a78dc226fca56ef74178c517e194ba178fddf158c770eb86b158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed05e629-1921-da3f-dcfc-fb9f2adf21db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem work_lower_bound
    (certificate :
      ConcreteHardnessCertificate
        problem OracleAlgorithm ConcreteAttack)
    (attack : ConcreteAttack)
    (successful : certificate.reduction.concreteSuccess attack) :
    (certificate.oracle.constant *
        certificate.oracle.witness.ratio) /
        certificate.workTranslation.queriesPerWork ≤
      certificate.workTranslation.work attack := by
  have oracleSuccessful :
      certificate.oracle.boundedError
        (certificate.reduction.translate attack) := by
    rw [← certificate.sameOracleSuccess]
    exact certificate.reduction.preservesSuccess attack successful
  apply (div_le_iff₀'
    certificate.workTranslation.queriesPerWorkPositive).2
  calc
    certificate.oracle.constant *
          certificate.oracle.witness.ratio ≤
        (certificate.oracle.queryCount
            (certificate.reduction.translate attack) : ℝ) :=
      certificate.oracle.sound _ oracleSuccessful
    _ =
        (certificate.reduction.oracleQueries
            (certificate.reduction.translate attack) : ℝ) := by
      rw [certificate.sameQueryCount]
    _ ≤
        certificate.workTranslation.queriesPerWork *
          certificate.workTranslation.work attack :=
      certificate.workTranslation.queryToWorkBound attack

end ConcreteHardnessCertificate

end Mathematics.Resolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variantaff588e30c37a78dc226fca56ef74178c517e194ba178fddf158c770eb86b158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variantaff588e30c37a78dc226fca56ef74178c517e194ba178fddf158c770eb86b158.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `767bd06ad96652587f892dea12468ce3cfea5644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
