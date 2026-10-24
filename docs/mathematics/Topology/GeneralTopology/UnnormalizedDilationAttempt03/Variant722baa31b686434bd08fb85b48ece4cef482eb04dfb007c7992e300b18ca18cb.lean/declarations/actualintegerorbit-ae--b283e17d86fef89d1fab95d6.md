# actualIntegerOrbit_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27027e65-7faf-3eee-6bd4-d89a430e5ae8",
  "kind": "theorem",
  "lexical_name": "actualIntegerOrbit_ae",
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
  "slug": "actualintegerorbit-ae--b283e17d86fef89d1fab95d6",
  "source": {
    "blob": "028b63dad3ccfda51f6248a3b1b0dbfba3238cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b283e17d86fef89d1fab95d62501abf5a015beca6306b21ac13b4fb0ff11fefc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27027e65-7faf-3eee-6bd4-d89a430e5ae8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualIntegerOrbit_ae (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) :
    actualIntegerOrbit A hA n =ᵐ[positiveMeasure]
      (fun x => actualComplexOperator A ((n.val : ℝ)*x)) := by
  filter_upwards [unnormalized_ae (n.val : ℝ) (by exact_mod_cast n.property)
      (actualComplexL2 A hA),
    (positive_mul_quasi (by exact_mod_cast n.property : 0 < (n.val:ℝ))).ae_eq_comp
      (actualComplexL2_ae A hA)] with x hk hp
  exact hk.trans hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `028b63dad3ccfda51f6248a3b1b0dbfba3238cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
