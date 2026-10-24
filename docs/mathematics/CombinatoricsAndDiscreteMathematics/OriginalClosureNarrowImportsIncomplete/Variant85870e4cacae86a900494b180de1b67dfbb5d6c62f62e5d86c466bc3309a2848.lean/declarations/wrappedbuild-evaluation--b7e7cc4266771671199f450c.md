# wrappedBuild_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31314e9a-1d27-c611-1079-9cd4cfadf1a6",
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
  "slug": "wrappedbuild-evaluation--b7e7cc4266771671199f450c",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21453,
    "line": 21428,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7e7cc4266771671199f450c81309dc2b5bfed6ee370a4a9c313c11a9f5ac78b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31314e9a-1d27-c611-1079-9cd4cfadf1a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21428–21453.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L21428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
