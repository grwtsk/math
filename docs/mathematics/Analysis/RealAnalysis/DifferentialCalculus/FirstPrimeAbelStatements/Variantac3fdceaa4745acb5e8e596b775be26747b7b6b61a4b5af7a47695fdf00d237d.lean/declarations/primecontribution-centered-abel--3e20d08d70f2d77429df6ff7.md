# primeContribution_centered_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4b546129a123115b4230cf00d4952c77ea35f80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8681a6a9-831e-c6f0-f5c0-56fdcecd0930",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:365cf107-3609-8ace-3c0c-19d0b495051a",
  "kind": "theorem",
  "lexical_name": "primeContribution_centered_abel",
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
  "slug": "primecontribution-centered-abel--3e20d08d70f2d77429df6ff7",
  "source": {
    "blob": "c4b546129a123115b4230cf00d4952c77ea35f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e20d08d70f2d77429df6ff7b6ed92cd02f50288f604202db376755040bea9aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:365cf107-3609-8ace-3c0c-19d0b495051a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeContribution_centered_abel (A : ℝ) (hA : 1 ≤ A) :
    primeContribution A = (∫ u in 0..2 * A, firstPrimeWeight A u) + thetaConstant -
      firstPrimeRemainder A := by
  rw [primeContribution_eq_closed A hA]
  exact primeHarmonicPrefix_centered_abel (2 * A) (by linarith) (firstPrimeWeight A)
    ((firstPrimeWeight_contDiff A hA).differentiable (by norm_num))
    (firstPrimeWeight_contDiff A hA).continuous_deriv_one
    (firstPrimeWeight_zero_endpoint A hA) (firstPrimeWeight_at_zero A hA)

/-- The original pole cancellation replaces the growing main integral by a decaying one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b546129a123115b4230cf00d4952c77ea35f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
