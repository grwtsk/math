# div_isBoundedUnder_of_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ae17cbb-f97c-aa05-a73b-94bc9746f0d1",
  "kind": "theorem",
  "lexical_name": "div_isBoundedUnder_of_isBigO",
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
  "slug": "div-isboundedunder-of-isbigo--1fbd2866c3fa562d79ef6057",
  "source": {
    "blob": "8211ac997303c104dfd6961fa29e577f094c8094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 483,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant181e254abdc85c7d087494a8a80e8afee8648e9c5a1f3412853fda88ee3daacb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fbd2866c3fa562d79ef6057c1138e3d98f0105e3aac4683e5818bdd136468f2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Lemmas/Variant181e254abdc85c7d087494a8a80e8afee8648e9c5a1f3412853fda88ee3daacb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ae17cbb-f97c-aa05-a73b-94bc9746f0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_isBoundedUnder_of_isBigO {α : Type*} {l : Filter α} {f g : α → 𝕜} (h : f =O[l] g) :
    IsBoundedUnder (· ≤ ·) l fun x => ‖f x / g x‖ := by
  obtain ⟨c, h₀, hc⟩ := h.exists_nonneg
  refine ⟨c, eventually_map.2 (hc.bound.mono fun x hx => ?_)⟩
  rw [norm_div]
  exact div_le_of_le_mul₀ (norm_nonneg _) h₀ hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Lemmas/Variant181e254abdc85c7d087494a8a80e8afee8648e9c5a1f3412853fda88ee3daacb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant181e254abdc85c7d087494a8a80e8afee8648e9c5a1f3412853fda88ee3daacb.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8211ac997303c104dfd6961fa29e577f094c8094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
