# NormedSpace.induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f553fac2884075e80d787a5a788de69406081b45ac254a0bb294d9bc1bac88d1",
  "kind": "def",
  "lexical_name": "NormedSpace.induced",
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
  "slug": "normedspace-induced--4c05946b1a690184482e966f",
  "source": {
    "blob": "a769baec052fefdfb172eaa92c85cfb7d9cfbe84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 222,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c05946b1a690184482e966fa58b685d9a639c5496f2883b75d1744e48a91915",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f553fac2884075e80d787a5a788de69406081b45ac254a0bb294d9bc1bac88d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def NormedSpace.induced {F : Type*} (α β γ : Type*) [NormedField α] [AddCommGroup β] [Module α β]
    [SeminormedAddCommGroup γ] [NormedSpace α γ] [LinearMapClass F α β γ] (f : F) :
    @NormedSpace α β _ (SeminormedAddCommGroup.induced β γ f) := by
  -- Porting note: trouble inferring SeminormedAddCommGroup β and Module α β
  -- unfolding the induced semi-norm is fiddly
  refine @NormedSpace.mk (α := α) (β := β) _ ?_ ?_ ?_
  · infer_instance
  · intro a b
    change ‖(⇑f) (a • b)‖ ≤ ‖a‖ * ‖(⇑f) b‖
    exact (map_smul f a b).symm ▸ norm_smul_le a (f b)
#align normed_space.induced NormedSpace.induced

section NormedAddCommGroup

variable [NormedField α]

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace α E]

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace α F]

open NormedField

/-- While this may appear identical to `NormedSpace.toModule`, it contains an implicit argument
involving `NormedAddCommGroup.toSeminormedAddCommGroup` that typeclass inference has trouble
inferring.

Specifically, the following instance cannot be found without this `NormedSpace.toModule'`:
```lean
example
  (𝕜 ι : Type*) (E : ι → Type*)
  [NormedField 𝕜] [Π i, NormedAddCommGroup (E i)] [Π i, NormedSpace 𝕜 (E i)] :
  Π i, Module 𝕜 (E i) := by infer_instance
```

[This Zulip thread](https://leanprover.zulipchat.com/#narrow/stream/113488-general/topic/Typeclass.20resolution.20under.20binders/near/245151099)
gives some more context. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a769baec052fefdfb172eaa92c85cfb7d9cfbe84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
