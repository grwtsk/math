# approximation_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cebe3cf-484d-378f-ebd3-067b7439258f",
  "kind": "theorem",
  "lexical_name": "approximation_return",
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
  "slug": "approximation-return--14a857c55a863631a42ba815",
  "source": {
    "blob": "85791bde48b25174407397722a437ae2eec086db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/Analysis/BranchSequenceReturn/Variant086dd4e51f6c49d0a08a377d47322ab5427c17187100032fce786f34ac8e0a71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14a857c55a863631a42ba81529f7a14d02e56171d3240d76389d790cb2539e91",
  "verification": {
    "reference": "docs/verification/Analysis/BranchSequenceReturn/Variant086dd4e51f6c49d0a08a377d47322ab5427c17187100032fce786f34ac8e0a71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cebe3cf-484d-378f-ebd3-067b7439258f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem approximation_return
    (source target finiteSource finiteTarget : ℝ → ℝ → ℝ)
    {lip alpha alpha' L kappa left right : ℝ}
    (hcert : ApproximationCertificate lip alpha alpha' L kappa)
    (hsource : source (left + kappa) (right - kappa) ≤
      finiteSource (left + kappa) (right - kappa) + 2 / L)
    (hcompare : ∀ displacement : ℝ, intervalLoss lip alpha alpha' L ≤ displacement →
      finiteSource (left + displacement) (right - displacement) ≤ finiteTarget left right)
    (htarget : finiteTarget left right ≤ target left right + 2 / L) :
    source (left + kappa) (right - kappa) - finiteSizeLoss L ≤ target left right := by
  have hc := hcompare kappa hcert.2.2
  unfold finiteSizeLoss
  have he : 4 / L = 2 / L + 2 / L := by ring
  rw [he]
  linarith

end FormalResearch.RiemannHypothesis.BranchSequenceReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchSequenceReturn/Variant086dd4e51f6c49d0a08a377d47322ab5427c17187100032fce786f34ac8e0a71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchSequenceReturn/Variant086dd4e51f6c49d0a08a377d47322ab5427c17187100032fce786f34ac8e0a71.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85791bde48b25174407397722a437ae2eec086db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
