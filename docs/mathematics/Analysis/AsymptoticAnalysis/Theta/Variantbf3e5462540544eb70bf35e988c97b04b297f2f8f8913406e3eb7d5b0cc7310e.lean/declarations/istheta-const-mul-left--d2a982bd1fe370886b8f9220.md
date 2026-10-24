# isTheta_const_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f252d8a2-7869-73d6-4187-9a204148915c",
  "kind": "theorem",
  "lexical_name": "isTheta_const_mul_left",
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
  "slug": "istheta-const-mul-left--d2a982bd1fe370886b8f9220",
  "source": {
    "blob": "403854a1231d3de72762ee08c7abcbbfa19fc6f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 308,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variantbf3e5462540544eb70bf35e988c97b04b297f2f8f8913406e3eb7d5b0cc7310e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a982bd1fe370886b8f92204a478d0d8335c7d8609a858b4008320116255a6a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Theta/Variantbf3e5462540544eb70bf35e988c97b04b297f2f8f8913406e3eb7d5b0cc7310e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f252d8a2-7869-73d6-4187-9a204148915c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTheta_const_mul_left {c : 𝕜} {f : α → 𝕜} (hc : c ≠ 0) :
    (fun x ↦ c * f x) =Θ[l] g ↔ f =Θ[l] g := by
  simpa only [← smul_eq_mul] using isTheta_const_smul_left hc
#align asymptotics.is_Theta_const_mul_left Asymptotics.isTheta_const_mul_left

alias ⟨IsTheta.of_const_mul_left, IsTheta.const_mul_left⟩ := isTheta_const_mul_left
#align asymptotics.is_Theta.of_const_mul_left Asymptotics.IsTheta.of_const_mul_left
#align asymptotics.is_Theta.const_mul_left Asymptotics.IsTheta.const_mul_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Theta/Variantbf3e5462540544eb70bf35e988c97b04b297f2f8f8913406e3eb7d5b0cc7310e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variantbf3e5462540544eb70bf35e988c97b04b297f2f8f8913406e3eb7d5b0cc7310e.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `403854a1231d3de72762ee08c7abcbbfa19fc6f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
