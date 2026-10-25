# profile_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc8ba72c-0e35-7410-52e6-cdef278d3549",
  "kind": "theorem",
  "lexical_name": "profile_at",
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
  "slug": "profile-at--b34b8e19cb07028efc4a2937",
  "source": {
    "blob": "b49bdf1d96b82d3ee567ac2ee57a35985cc99518",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 624,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant57cb3adb164f64c031260385b6c27b793cb35cb2b6c6d7fa76ab831c9e9eaecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b34b8e19cb07028efc4a2937b28e4ae6e0e6f59d0c924cfe92d045066cd79f2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant57cb3adb164f64c031260385b6c27b793cb35cb2b6c6d7fa76ab831c9e9eaecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8ba72c-0e35-7410-52e6-cdef278d3549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem profile_at {n : Nat} {T : Expr S} {s : S}
    (ht : PureTypeSystem.HasType P (Ω.context n) (T.rename (Expr.reverseIndex n)) (.sort s)) :
    Ω.profile T = Profile P (Ω.context n) (T.rename (Expr.reverseIndex n)) := by
  have w : WeaklyNormalizing T := (show Ω.HasType T (.sort s) from ⟨n, ht⟩).weaklyNormalizing hw
  ext t
  constructor
  · rintro ⟨m, hm⟩
    have hn := Ω.at_mono (A := .sort t) hm (le_max_left m n)
    change PureTypeSystem.HasType P (Ω.context (max m n))
      (T.normalForm.rename (Expr.reverseIndex (max m n))) (.sort t) at hn
    rw [← Expr.normalForm_rename w] at hn
    have he := Ω.profile_at_mono hw ht (le_max_right m n)
    exact he ▸ hn
  · intro hn
    refine ⟨n, ?_⟩
    change PureTypeSystem.HasType P (Ω.context n) (T.normalForm.rename (Expr.reverseIndex n))
      (.sort t)
    rw [← Expr.normalForm_rename w]
    exact hn

omit hw in
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant57cb3adb164f64c031260385b6c27b793cb35cb2b6c6d7fa76ab831c9e9eaecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant57cb3adb164f64c031260385b6c27b793cb35cb2b6c6d7fa76ab831c9e9eaecd.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b49bdf1d96b82d3ee567ac2ee57a35985cc99518` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
