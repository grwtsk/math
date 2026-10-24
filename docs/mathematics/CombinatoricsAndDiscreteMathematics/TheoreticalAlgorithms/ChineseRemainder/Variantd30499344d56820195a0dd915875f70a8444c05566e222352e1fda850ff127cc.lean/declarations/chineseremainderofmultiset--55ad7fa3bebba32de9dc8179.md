# chineseRemainderOfMultiset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20b88750f7b9092945ee50224686b3a546d688255158d26a736153f4d565ad30",
  "kind": "def",
  "lexical_name": "chineseRemainderOfMultiset",
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
  "slug": "chineseremainderofmultiset--55ad7fa3bebba32de9dc8179",
  "source": {
    "blob": "2cb39a1101ea722e223d526dc4d50533a664968f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55ad7fa3bebba32de9dc817996fcab2f77c709f651e9e2a16a0b7bdbd09c8df2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20b88750f7b9092945ee50224686b3a546d688255158d26a736153f4d565ad30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chineseRemainderOfMultiset {m : Multiset ι} :
    m.Nodup → (∀ i ∈ m, s i ≠ 0) → Set.Pairwise {x | x ∈ m} (Coprime on s) →
    { k // ∀ i ∈ m, k ≡ a i [MOD s i] } :=
  Quotient.recOn m
    (fun l nod _ co =>
      chineseRemainderOfList a s l (List.Nodup.pairwise_of_forall_ne nod co))
    (fun l l' (pp : l.Perm l') ↦
      funext fun nod' : l'.Nodup =>
      have nod : l.Nodup := pp.symm.nodup_iff.mp nod'
      funext fun hs' : ∀ i ∈ l', s i ≠ 0 =>
      have hs : ∀ i ∈ l, s i ≠ 0  := by simpa [List.Perm.mem_iff pp] using hs'
      funext fun co' : Set.Pairwise {x | x ∈ l'} (Coprime on s) =>
      have co : Set.Pairwise {x | x ∈ l} (Coprime on s) := by simpa [List.Perm.mem_iff pp] using co'
      have lco : l.Pairwise (Coprime on s) := List.Nodup.pairwise_of_forall_ne nod co
      have : ∀ {m' e nod'' hs'' co''}, @Eq.ndrec (Multiset ι) l
        (fun m ↦ m.Nodup → (∀ i ∈ m, s i ≠ 0) →
          Set.Pairwise {x | x ∈ m} (Coprime on s) → { k // ∀ i ∈ m, k ≡ a i [MOD s i] })
        (fun nod _ co ↦ chineseRemainderOfList a s l (List.Nodup.pairwise_of_forall_ne nod co))
          m' e nod'' hs'' co'' =
        (chineseRemainderOfList a s l lco : ℕ) := by
          rintro _ rfl _ _ _; rfl
      by ext; exact this.trans <| chineseRemainderOfList_perm a s pp hs lco)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cb39a1101ea722e223d526dc4d50533a664968f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
