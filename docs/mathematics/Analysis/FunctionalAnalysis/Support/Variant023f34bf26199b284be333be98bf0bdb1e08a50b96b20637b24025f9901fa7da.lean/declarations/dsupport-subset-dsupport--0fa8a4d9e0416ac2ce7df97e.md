# dsupport_subset_dsupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e298c9b-5d59-8f5a-9ca9-f0b296f4aa08",
  "kind": "theorem",
  "lexical_name": "dsupport_subset_dsupport",
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
  "slug": "dsupport-subset-dsupport--0fa8a4d9e0416ac2ce7df97e",
  "source": {
    "blob": "15761e3d4cc1afb05b0a6b6704fcd6c1ffdf52d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 146,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fa8a4d9e0416ac2ce7df97edf6ec181febf4eaa03a7d209ae101c203a84e046",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e298c9b-5d59-8f5a-9ca9-f0b296f4aa08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dsupport_subset_dsupport
    (h : ∀ (s : Set α) (_ : IsOpen s), IsVanishingOn g s → IsVanishingOn f s) :
    dsupport f ⊆ dsupport g :=
  Set.sInter_mono fun s ⟨g_van, s_cl⟩ ↦ ⟨h sᶜ s_cl.isOpen_compl g_van, s_cl⟩

@[grind .]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15761e3d4cc1afb05b0a6b6704fcd6c1ffdf52d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
