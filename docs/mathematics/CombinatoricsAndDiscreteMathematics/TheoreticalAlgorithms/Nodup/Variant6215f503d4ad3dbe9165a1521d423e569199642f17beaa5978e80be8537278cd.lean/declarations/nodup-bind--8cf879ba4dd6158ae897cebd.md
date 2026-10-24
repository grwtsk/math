# nodup_bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:629aea40-c4cd-a1a9-834f-a30fd5f677c9",
  "kind": "theorem",
  "lexical_name": "nodup_bind",
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
  "slug": "nodup-bind--8cf879ba4dd6158ae897cebd",
  "source": {
    "blob": "b87a513d25d7457617e3e6b24e611948c27a0b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 232,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cf879ba4dd6158ae897cebdfaa5bdeebb543a93ae2e9f423952fd0815d124a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:629aea40-c4cd-a1a9-834f-a30fd5f677c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_bind {s : Multiset α} {t : α → Multiset β} :
    Nodup (bind s t) ↔ (∀ a ∈ s, Nodup (t a)) ∧ s.Pairwise fun a b => Disjoint (t a) (t b) :=
  have h₁ : ∀ a, ∃ l : List β, t a = l := fun a => Quot.induction_on (t a) fun l => ⟨l, rfl⟩
  let ⟨t', h'⟩ := Classical.axiom_of_choice h₁
  have : t = fun a => ofList (t' a) := funext h'
  have hd : Symmetric fun a b => List.Disjoint (t' a) (t' b) := fun a b h => h.symm
  Quot.induction_on s <| by simp [this, List.nodup_bind, pairwise_coe_iff_pairwise hd]
#align multiset.nodup_bind Multiset.nodup_bind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b87a513d25d7457617e3e6b24e611948c27a0b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
