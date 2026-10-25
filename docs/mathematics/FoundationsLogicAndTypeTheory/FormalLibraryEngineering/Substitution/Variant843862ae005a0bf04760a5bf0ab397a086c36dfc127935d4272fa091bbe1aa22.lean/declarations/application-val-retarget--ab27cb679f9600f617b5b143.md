# application_val_retarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db2ba591-593b-b2bb-999d-85bef615be0e",
  "kind": "theorem",
  "lexical_name": "application_val_retarget",
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
  "slug": "application-val-retarget--ab27cb679f9600f617b5b143",
  "source": {
    "blob": "30ab4fede61eaf4d948c331bc018521c2f9e9acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab27cb679f9600f617b5b143ecf0484c950010d82a1f9f911adfc9a848e14c48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db2ba591-593b-b2bb-999d-85bef615be0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem application_val_retarget {f n D E : Expr S}
    (h : HasType P Γ (.app f n) T) (h' : HasType P Γ (.app f n) U)
    (hf : HasType P Γ f (.pi D E)) (hn : HasType P Γ n D)
    (hc : Converts T (E.instantiate n)) (hc' : Converts U (E.instantiate n))
    (ef : Evaluator (hw := hw) Ω C hno Γ f (.pi D E))
    (en : Evaluator (hw := hw) Ω C hno Γ n D)
    (e : Environment (hw := hw) Ω C hno Γ)
    (he : (T.subst e.images).normalForm = (U.subst e.images).normalForm)
    (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm))
    (hu : ActiveLayer P C (Ω.profile (U.subst e.images).normalForm)) :
    ((application h hf hn hc ef en e).val ha).val = ((application h' hf hn hc' ef en e).val
      hu).val := by
  dsimp only [application,baseResult,applicationValue]
  split
  · rfl
  · exact distinguished_congr Ω C hno he
end PreResult
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant843862ae005a0bf04760a5bf0ab397a086c36dfc127935d4272fa091bbe1aa22.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30ab4fede61eaf4d948c331bc018521c2f9e9acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
