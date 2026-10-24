# squarefree_and_prime_pow_iff_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07c10de0-5e74-f444-5450-31405d63ddbf",
  "kind": "theorem",
  "lexical_name": "squarefree_and_prime_pow_iff_prime",
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
  "slug": "squarefree-and-prime-pow-iff-prime--0856d1ef165680549ddcfaa6",
  "source": {
    "blob": "19958609d3065cb323ddf0f509958062494c9535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0856d1ef165680549ddcfaa6a998bd969839af098159faed7b97aa341ad2602b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07c10de0-5e74-f444-5450-31405d63ddbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefree_and_prime_pow_iff_prime {n : ℕ} : Squarefree n ∧ IsPrimePow n ↔ Prime n := by
  refine ⟨?_, fun hn => ⟨hn.squarefree, hn.isPrimePow⟩⟩
  rw [isPrimePow_nat_iff]
  rintro ⟨h, p, k, hp, hk, rfl⟩
  rw [squarefree_pow_iff hp.ne_one hk.ne'] at h
  rwa [h.2, pow_one]

/-- Assuming that `n` has no factors less than `k`, returns the smallest prime `p` such that
  `p^2 ∣ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19958609d3065cb323ddf0f509958062494c9535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
