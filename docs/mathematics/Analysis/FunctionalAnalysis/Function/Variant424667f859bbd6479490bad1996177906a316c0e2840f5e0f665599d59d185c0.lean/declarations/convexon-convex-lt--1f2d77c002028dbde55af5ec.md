# ConvexOn.convex_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a062c2d-4502-752c-1a4c-99bbfd62a5c7",
  "kind": "theorem",
  "lexical_name": "ConvexOn.convex_lt",
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
  "slug": "convexon-convex-lt--1f2d77c002028dbde55af5ec",
  "source": {
    "blob": "81e9f348f8b747b7b61acc23a9358f06ebb73fff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 571,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variant424667f859bbd6479490bad1996177906a316c0e2840f5e0f665599d59d185c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f2d77c002028dbde55af5ecb7e439371db6c141828cfeb726a71b938b38a568",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Function/Variant424667f859bbd6479490bad1996177906a316c0e2840f5e0f665599d59d185c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a062c2d-4502-752c-1a4c-99bbfd62a5c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvexOn.convex_lt (hf : ConvexOn 𝕜 s f) (r : β) : Convex 𝕜 ({ x ∈ s | f x < r }) :=
  convex_iff_forall_pos.2 fun x hx y hy a b ha hb hab =>
    ⟨hf.1 hx.1 hy.1 ha.le hb.le hab,
      calc
        f (a • x + b • y) ≤ a • f x + b • f y := hf.2 hx.1 hy.1 ha.le hb.le hab
        _ < a • r + b • r :=
          (add_lt_add_of_lt_of_le (smul_lt_smul_of_pos_left hx.2 ha)
            (smul_le_smul_of_nonneg_left hy.2.le hb.le))
        _ = r := Convex.combo_self hab _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variant424667f859bbd6479490bad1996177906a316c0e2840f5e0f665599d59d185c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variant424667f859bbd6479490bad1996177906a316c0e2840f5e0f665599d59d185c0.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e9f348f8b747b7b61acc23a9358f06ebb73fff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
