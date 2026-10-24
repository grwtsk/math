# certified_integral_traversal_obeys_affine_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f8f1bd9c7264a28d23d3f818c413a719cd2769d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c445e7f3-874d-53be-7553-3582c92421a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ca5a9c2-35b2-71ed-1f9a-d6bac0e61e08",
  "kind": "theorem",
  "lexical_name": "certified_integral_traversal_obeys_affine_bound",
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
  "slug": "certified-integral-traversal-obeys-affine-bound--6f1be3c87e24bd6b9d9a0e0a",
  "source": {
    "blob": "9f8f1bd9c7264a28d23d3f818c413a719cd2769d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f1be3c87e24bd6b9d9a0e0ad86e388257e17e2121b04adab56b852f2307a0eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ca5a9c2-35b2-71ed-1f9a-d6bac0e61e08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem certified_integral_traversal_obeys_affine_bound
    (actual : Nat → Nat)
    (gain localDefect initialDefect : Nat)
    (initial : actual 0 ≤ initialDefect)
    (step :
      ∀ n, actual (n + 1) ≤
        gain * actual n + localDefect) :
    ∀ n, actual n ≤
      constantAffineBound gain localDefect initialDefect n :=
  iterated_affine_defect_bound
    actual gain localDefect initialDefect initial step

/-!
This theorem is intentionally scoped to an integral gain.  In particular it
does not establish general sub-unit geometric convergence.  Such claims use a
`ScaledDerivativeGainCertificate` plus separately discharged completeness and
basin obligations.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8f1bd9c7264a28d23d3f818c413a719cd2769d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
