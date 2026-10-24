# scan_packetFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:660bd98f-a635-a89c-6f7c-c955e481725d",
  "kind": "theorem",
  "lexical_name": "scan_packetFrom",
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
  "slug": "scan-packetfrom--0bdc9dd2bb9e641eb069b37a",
  "source": {
    "blob": "3f43c73eddbf429fd153b65e4e48005250db4ce3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 75,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bdc9dd2bb9e641eb069b37a25ef08c10b235a3c153e9ddf6c2d681c27703707",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:660bd98f-a635-a89c-6f7c-c955e481725d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scan_packetFrom {c : Coordinates} {p : RationalPoleValue.Parameters}
    (j n : ℕ) (a : CheckedPoleJet.Accum)
    (hg : ∀ i, j ≤ i → i < j+n →
      RationalPowerValue.check c ((i+1 : ℕ) : ℚ)
        (RationalPoleValue.resolution p (i+1)) = true) :
    CheckedPoleJet.scan c p j n a (packetFrom c p j n) =
      some (run (CheckedPoleJet.referenceStep c p) j n a) := by
  induction n generalizing j a with
  | zero => rfl
  | succ n ih =>
      have hc := hg j le_rfl (by omega)
      have hg' : ∀ i, j+1 ≤ i → i < (j+1)+n →
          RationalPowerValue.check c ((i+1 : ℕ) : ℚ)
            (RationalPoleValue.resolution p (i+1)) = true := by
        intro i hlo hhi
        exact hg i (by omega) (by omega)
      have ht := ih (j+1)
        (CheckedPoleJet.advance p (j+1) (RationalPoleValue.powers c p (j+1)) a) hg'
      simpa only [packetFrom,CheckedPoleJet.scan,powerRows_checked hc,
        run,CheckedPoleJet.referenceStep] using ht

/-- Canonical witnesses reproduce the old complete finite value and derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f43c73eddbf429fd153b65e4e48005250db4ce3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
