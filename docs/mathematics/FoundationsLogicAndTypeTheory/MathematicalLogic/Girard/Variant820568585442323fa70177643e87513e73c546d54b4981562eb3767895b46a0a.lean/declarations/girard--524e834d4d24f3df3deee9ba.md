# girard.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16ea6890ecf9a7e38fd58196e616a9ec13bb52f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/820568585442323fa70177643e87513e73c546d54b4981562eb3767895b46a0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:238673ab-51c4-2d4c-1731-5aa81b7d2144",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a0c8366-e04a-68e4-7e3b-dc08fc29dea1",
  "kind": "theorem",
  "lexical_name": "girard.",
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
  "slug": "girard--524e834d4d24f3df3deee9ba",
  "source": {
    "blob": "16ea6890ecf9a7e38fd58196e616a9ec13bb52f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Girard/Variant820568585442323fa70177643e87513e73c546d54b4981562eb3767895b46a0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:524e834d4d24f3df3deee9ba8bf5d59e2ce1d4840330b9824a877a0a7f7548b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Girard/Variant820568585442323fa70177643e87513e73c546d54b4981562eb3767895b46a0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a0c8366-e04a-68e4-7e3b-dc08fc29dea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem girard.{u} (pi : (Type u → Type u) → Type u)
    (lam : ∀ {A : Type u → Type u}, (∀ x, A x) → pi A) (app : ∀ {A}, pi A → ∀ x, A x)
    (beta : ∀ {A : Type u → Type u} (f : ∀ x, A x) (x), app (lam f) x = f x) : False :=
  let F (X) := (Set (Set X) → X) → Set (Set X)
  let U := pi F
  let G (T : Set (Set U)) (X) : F X := fun f => {p | {x : U | f (app x X f) ∈ p} ∈ T}
  let τ (T : Set (Set U)) : U := lam (G T)
  let σ (S : U) : Set (Set U) := app S U τ
  have στ : ∀ {s S}, s ∈ σ (τ S) ↔ {x | τ (σ x) ∈ s} ∈ S := fun {s S} =>
    iff_of_eq (congr_arg (fun f : F U => s ∈ f τ) (beta (G S) U) :)
  let ω : Set (Set U) := {p | ∀ x, p ∈ σ x → x ∈ p}
  let δ (S : Set (Set U)) := ∀ p, p ∈ S → τ S ∈ p
  have : δ ω := fun _p d => d (τ ω) <| στ.2 fun x h => d (τ (σ x)) (στ.2 h)
  this {y | ¬δ (σ y)} (fun _x e f => f _ e fun _p h => f _ (στ.1 h)) fun _p h => this _ (στ.1 h)

end Counterexample
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Girard/Variant820568585442323fa70177643e87513e73c546d54b4981562eb3767895b46a0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Girard/Variant820568585442323fa70177643e87513e73c546d54b4981562eb3767895b46a0a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ea6890ecf9a7e38fd58196e616a9ec13bb52f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
