# manifestPinned_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d27c6b9-5c04-88d7-1985-f029953c380f",
  "kind": "theorem",
  "lexical_name": "manifestPinned_sound",
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
  "slug": "manifestpinned-sound--58278d6f03a4b8a8dd28f3e2",
  "source": {
    "blob": "03d4ab4d8772e279368bb50137728e8ba9d7afc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58278d6f03a4b8a8dd28f3e26e266466de470f4d0b0388efa5cd6db8ee4d5978",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d27c6b9-5c04-88d7-1985-f029953c380f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem manifestPinned_sound
    {commitment : CanonicalManifestCommitment}
    {submission : RuntimeSubmission}
    (pinned : ManifestPinned commitment submission) :
    submission.manifestWire = commitment.manifestWire ∧
    sha256 commitment.manifestWire = commitment.manifestDigest ∧
    ∃ manifest,
      decodeManifest commitment.manifestWire = some manifest ∧
      manifest.snapshotDigest = commitment.snapshotDigest ∧
      manifest.terrainDigest = commitment.terrainDigest ∧
      manifest.characterRegistryDigest =
        commitment.characterRegistryDigest := by
  unfold ManifestPinned manifestPinnedCheck at pinned
  simp only [Bool.and_eq_true, decide_eq_true_eq] at pinned
  obtain ⟨⟨wireEquality, digestEquality⟩, identities⟩ := pinned
  cases decoded : decodeManifest commitment.manifestWire with
  | none => simp [decoded] at identities
  | some manifest =>
      simp only [decoded, Bool.and_eq_true, decide_eq_true_eq] at identities
      exact ⟨wireEquality, digestEquality, manifest, rfl,
        identities.1.1, identities.1.2, identities.2⟩

/-- Production verifier: exact finite self-contained verification conjoined
with an externally selected exact manifest commitment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Soundness/Variant84fbdef1432d3ef3cb50461996b9fff42e822cbc3a82954715ee48e00e2660a6.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03d4ab4d8772e279368bb50137728e8ba9d7afc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
