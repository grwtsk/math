# FreimanHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0810ba021b322acbf7d970899304b26f5e993dfa15b4cfd4cae5a3aea8cd3c5",
  "kind": "class",
  "lexical_name": "FreimanHomClass",
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
  "slug": "freimanhomclass--9951a403f9ee7c0a555a87e6",
  "source": {
    "blob": "5ac8c6151897609e54bd1d8b26504305af69a263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 112,
    "path": "GRWTSK/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9951a403f9ee7c0a555a87e63153397b9f1601751459698d944321478d0ac489",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0810ba021b322acbf7d970899304b26f5e993dfa15b4cfd4cae5a3aea8cd3c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class FreimanHomClass (F : Type*) (A : outParam <| Set α) (β : outParam <| Type*) [CommMonoid α]
  [CommMonoid β] (n : ℕ) [FunLike F α fun _ => β] : Prop where
  /-- An `n`-Freiman homomorphism preserves products of `n` elements. -/
  map_prod_eq_map_prod' (f : F) {s t : Multiset α} (hsA : ∀ ⦃x⦄, x ∈ s → x ∈ A)
    (htA : ∀ ⦃x⦄, x ∈ t → x ∈ A) (hs : Multiset.card s = n) (ht : Multiset.card t = n)
    (h : s.prod = t.prod) :
    (s.map f).prod = (t.map f).prod
#align freiman_hom_class FreimanHomClass

variable [FunLike F α fun _ => β]

section CommMonoid

variable [CommMonoid α] [CommMonoid β] [CommMonoid γ] [CommMonoid δ] [CommGroup G] {A : Set α}
  {B : Set β} {C : Set γ} {n : ℕ} {a b c d : α}

/- porting note: inserted following def & instance for consistent coercion behaviour,
see also Algebra.Hom.Group for similar -/
/-- Turn an element of a type `F` satisfying `FreimanHomClass F A β n` into an actual
`FreimanHom`. This is declared as the default coercion from `F` to `FreimanHom A β n`. -/
@[to_additive (attr := coe)
    " Turn an element of a type `F` satisfying `AddFreimanHomClass F A β n` into an actual
    `AddFreimanHom`. This is declared as the default coercion from `F` to `AddFreimanHom A β n`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac8c6151897609e54bd1d8b26504305af69a263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
