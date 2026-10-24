# r_integral_of_u_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddd83264-6f17-2650-c85d-01cc5f9fd34b",
  "kind": "lemma",
  "lexical_name": "r_integral_of_u_integral",
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
  "slug": "r-integral-of-u-integral--42ec9974553737210b691248",
  "source": {
    "blob": "2d2a14bce2719c1612afaf5a6791e75c827763cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variant0af4f682a8730874fb0a3f8483a200882000cac75c863859d5710d993ac49173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42ec9974553737210b691248584e9db70f879d4d6a6c26402b0873c0a5250a33",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Reduction/Variant0af4f682a8730874fb0a3f8483a200882000cac75c863859d5710d993ac49173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddd83264-6f17-2650-c85d-01cc5f9fd34b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma r_integral_of_u_integral : ∃ r : R, algebraMap R K r = CK.r := by
  refine IsIntegrallyClosed.isIntegral_iff.mp ⟨X ^ 4 - C (integralModel R W).b₄ * X ^ 2 -
    C (u ^ 6 * (integralModel R W').b₆ + 2 * (integralModel R W).b₆) * X -
    C ((integralModel R W).b₈ - u ^ 8 * (integralModel R W').b₈), by monicity!, ?_⟩
  simp [map_ofNat, hu, ← hCK, integralModel_b₄_eq, integralModel_b₆_eq,
    integralModel_b₈_eq, variableChange_b₆, variableChange_b₈]
  ring1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Reduction/Variant0af4f682a8730874fb0a3f8483a200882000cac75c863859d5710d993ac49173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variant0af4f682a8730874fb0a3f8483a200882000cac75c863859d5710d993ac49173.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d2a14bce2719c1612afaf5a6791e75c827763cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
