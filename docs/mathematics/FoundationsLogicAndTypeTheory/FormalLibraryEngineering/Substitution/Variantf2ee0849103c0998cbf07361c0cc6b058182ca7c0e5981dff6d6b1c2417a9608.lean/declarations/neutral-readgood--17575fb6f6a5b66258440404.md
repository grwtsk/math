# neutral_readGood

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e5089b6-7fb1-6869-0d5c-a9a4d104e514",
  "kind": "theorem",
  "lexical_name": "neutral_readGood",
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
  "slug": "neutral-readgood--17575fb6f6a5b66258440404",
  "source": {
    "blob": "38bfb1ca6249cfb327385cac6688e50254e395e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17575fb6f6a5b66258440404f202807d1d52f59151d1980a17e4cc7eec8115d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e5089b6-7fb1-6869-0d5c-a9a4d104e514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neutral_readGood {Γ : List (Expr S)} {M : Expr S} {s : S}
    (t : TypingTree P Γ M (.sort s)) (hne : Neutral M) (ξ : Nat → Expr S)
    (hs : ({s} : Set S) ∈ C) (ha : ¬ ActiveLayer P C (AxProfile P s)) : ReadGood Ω C t ξ := by
  have hbase (v : Prop) : baseGood Ω C M (.sort s) ξ v := by
    intro _
    refine ⟨s,rfl,hs,?_,fun _ => hne⟩
    intro hh
    exact False.elim (ha (by simpa only [Expr.subst,Ω.profile_sort] using hh))
  cases t with
  | var ht hd hc => exact hbase True
  | sort ht hax hc => cases hne
  | product ht d b hr hc => cases hne
  | abstraction ht d b hp hc => cases hne
  | application ht f a hc => exact hbase _
end ObservationValues
end PureTypeSystem

namespace PureTypeSystem.ObservationValues

section
universe u
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) [Fintype S]
variable (C : Set (Set S)) {hw : SystemWeaklyNormalizing P} (hno : ¬ ForbiddenConfiguration P C)

namespace PreResult
variable {Ω C hno} {Γ : List (Expr S)} {M T U : Expr S}
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38bfb1ca6249cfb327385cac6688e50254e395e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
