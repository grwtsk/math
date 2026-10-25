# wrappedBuild_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67ea3cb6-3061-d95c-0f19-3a1e2bd38f36",
  "kind": "theorem",
  "lexical_name": "wrappedBuild_evaluation",
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
  "slug": "wrappedbuild-evaluation--383c3e3fd2ac6c527337265b",
  "source": {
    "blob": "3462d8a5a4c7b70eb34c05d74626edd4369bd8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1446,
    "line": 1421,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:383c3e3fd2ac6c527337265b088840a3cb6d63c160f5155157e007e2994e54df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ea3cb6-3061-d95c-0f19-3a1e2bd38f36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1421–1446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wrappedBuild_evaluation {A Q w : Expr S} (ha : HasType P Γ A (.sort R.seed))
    (ma : WellModed γ A .data) (hQ : L.Family (R.singleType A) Q)
    (hw : HasType P Γ w (R.singleType A)) (mw : WellModed γ w .data) :
    Equivalent P Γ γ (R.funPath.observe (R.funType A) (R.wrappedBuild A Q) (R.readBody w))
      (Q.instantiate w) := by
  have hf := h.funBuild_typed ha ma hQ
  have hbody := h.readBody_family ha hw mw
  have he₀ := h.funPath.cancellation (h.fun_sorted ha) (h.fun_mode ma) hf hbody
  have he : Equivalent P Γ γ (R.funPath.observe (R.funType A) (R.wrappedBuild A Q) (R.readBody w))
      (R.tail.read (.app .dd (R.funBuild A Q) w)) := by
    simpa only [DataWrapper.cancelFormula,Bool.false_eq_true,ite_false,readBody_instantiate,
      wrappedBuild] using he₀
  have hwrap := h.wrappedBuild_typed ha ma hQ
  have hobs := (h.funPath.sound (h.fun_sorted ha) (h.fun_mode ma)).2 _ _ hwrap.1 hwrap.2 hbody
  have hread := h.tail.read_formula (hf.1.apply_arrow hw) (.app hf.2 mw)
  obtain ⟨t,ht⟩ := L.triple.codomain.1
  exact he.trans (h.funBuild_evaluation ha ma hQ hw mw)
    (hobs.1 t ht) (hread.1 t ht) ((hQ.instantiate hw mw).1 t ht)
end Formed
end ProbeCode
end

section
universe u
variable {S : Type u}
namespace Converts
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean#L1421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3462d8a5a4c7b70eb34c05d74626edd4369bd8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
