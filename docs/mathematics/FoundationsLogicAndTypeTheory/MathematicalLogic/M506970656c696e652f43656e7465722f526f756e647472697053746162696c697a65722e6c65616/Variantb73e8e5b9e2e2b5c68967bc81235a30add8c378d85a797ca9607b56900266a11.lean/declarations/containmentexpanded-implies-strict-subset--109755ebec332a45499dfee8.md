# containmentExpanded_implies_strict_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1b32ea5-83ac-bd35-1a33-95d86b45ff91",
  "kind": "theorem",
  "lexical_name": "containmentExpanded_implies_strict_subset",
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
  "slug": "containmentexpanded-implies-strict-subset--109755ebec332a45499dfee8",
  "source": {
    "blob": "96625e7989f2406ae83848f232252023fbe13b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 331,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variantb73e8e5b9e2e2b5c68967bc81235a30add8c378d85a797ca9607b56900266a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:109755ebec332a45499dfee8294b2d7bc108a7ca74affa45e34d289e1c3722ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variantb73e8e5b9e2e2b5c68967bc81235a30add8c378d85a797ca9607b56900266a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1b32ea5-83ac-bd35-1a33-95d86b45ff91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem containmentExpanded_implies_strict_subset
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam)
    (h :
      statusOf eqp pot previous next =
        RoundtripStabilityStatus.containmentExpanded) :
    ledgerStrictSubset previous.containedLedger next.containedLedger := by
  unfold statusOf at h
  classical
  by_cases hAuth : previous.authorityBoundary = next.authorityBoundary
  · simp [hAuth] at h
    by_cases hNon : previous.nonclaims = next.nonclaims
    · simp [hNon] at h
      by_cases hEnergy : pot.energy next.beam > pot.energy previous.beam
      · simp [hEnergy] at h
      · simp [hEnergy] at h
        by_cases hContains :
            ledgerContains previous.containedLedger next.containedLedger
        · simp [hContains] at h
          by_cases hStrict :
              ledgerStrictSubset previous.containedLedger next.containedLedger
          · exact hStrict
          · simp [hStrict] at h
            by_cases hA : previous.activeResidues = next.activeResidues
            · simp [hA] at h
              by_cases hP :
                  eqp.payloadEq previous.cleanPayload next.cleanPayload
              · simp [hP] at h
                by_cases hI :
                    eqp.reverseInputEq previous.reverseInput next.reverseInput
                · simp [hI] at h
                  by_cases hO :
                      eqp.outputEq previous.outputPayload next.outputPayload
                  · simp [hO] at h
                    by_cases hEmpty : next.activeResidues = []
                    · simp [hEmpty] at h
                    · simp [hEmpty] at h
                  · simp [hO] at h
                · simp [hI] at h
              · simp [hP] at h
            · simp [hA] at h
        · simp [hContains] at h
    · simp [hNon] at h
  · simp [hAuth] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variantb73e8e5b9e2e2b5c68967bc81235a30add8c378d85a797ca9607b56900266a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616/Variantb73e8e5b9e2e2b5c68967bc81235a30add8c378d85a797ca9607b56900266a11.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96625e7989f2406ae83848f232252023fbe13b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
