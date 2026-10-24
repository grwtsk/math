# isBigOWith_self_const_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0613041b-baec-3911-92cc-569e9478614c",
  "kind": "theorem",
  "lexical_name": "isBigOWith_self_const_mul'",
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
  "slug": "isbigowith-self-const-mul--ea1a0a2a0391ebe3b00ce94f",
  "source": {
    "blob": "fa06a5ced7e3c7868ddf589b4131b9cae7f37ea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 58,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant1847665615a82e64fd24e8ba3cbef8322467cec98c3d75b6f2fd72299902dfa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea1a0a2a0391ebe3b00ce94f3a8123134115a6666c6c86fd75ebf0f307129d98",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Ring/Variant1847665615a82e64fd24e8ba3cbef8322467cec98c3d75b6f2fd72299902dfa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0613041b-baec-3911-92cc-569e9478614c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigOWith_self_const_mul' (u : Rˣ) (f : α → R) (l : Filter α) :
    IsBigOWith ‖(↑u⁻¹ : R)‖ l f fun x => ↑u * f x :=
  (isBigOWith_const_mul_self ↑u⁻¹ (fun x ↦ ↑u * f x) l).congr_left
    fun x ↦ u.inv_mul_cancel_left (f x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variant1847665615a82e64fd24e8ba3cbef8322467cec98c3d75b6f2fd72299902dfa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant1847665615a82e64fd24e8ba3cbef8322467cec98c3d75b6f2fd72299902dfa2.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa06a5ced7e3c7868ddf589b4131b9cae7f37ea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
