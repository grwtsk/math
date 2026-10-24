# IsBigO.comp_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59358d02-39ac-baae-a67b-ac5b31e36fee",
  "kind": "theorem",
  "lexical_name": "IsBigO.comp_fst",
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
  "slug": "isbigo-comp-fst--f6a452f1f88aca1efcdce3f7",
  "source": {
    "blob": "dbcb35a55187e05fd2a2f7490743b244218434bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 113,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Prod/Variantaf828553d69428e21af64c5619d48dfc4486ee877160624ff02c3b0a63c8efb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6a452f1f88aca1efcdce3f7c543af30a37b4cf1f6bfe492a7bedba3c4de2f8b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Prod/Variantaf828553d69428e21af64c5619d48dfc4486ee877160624ff02c3b0a63c8efb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59358d02-39ac-baae-a67b-ac5b31e36fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsBigO.comp_fst : f =O[l] g → (f ∘ Prod.fst) =O[l ×ˢ l'] (g ∘ Prod.fst) := by
  simp only [isBigO_iff, eventually_prod_iff]
  exact fun ⟨c, hc⟩ ↦ ⟨c, _, hc, fun _ ↦ True, eventually_true l', fun {_} h {_} _ ↦ h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Prod/Variantaf828553d69428e21af64c5619d48dfc4486ee877160624ff02c3b0a63c8efb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Prod/Variantaf828553d69428e21af64c5619d48dfc4486ee877160624ff02c3b0a63c8efb5.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbcb35a55187e05fd2a2f7490743b244218434bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
