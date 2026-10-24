# Applicative.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6d80558fb7bdc746d70d808cca849061150843a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/723cbbf04242721afc663bc7a14ce6d1c341a7888ee547e8d676f2cc1f45e4d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7843edff-2529-b49e-0b39-7df36481f1a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4202fe6-49aa-ecca-1730-5bf9ef082587",
  "kind": "theorem",
  "lexical_name": "Applicative.ext",
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
  "slug": "applicative-ext--58f63030caacfd64dc30e4a0",
  "source": {
    "blob": "f6d80558fb7bdc746d70d808cca849061150843a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant723cbbf04242721afc663bc7a14ce6d1c341a7888ee547e8d676f2cc1f45e4d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58f63030caacfd64dc30e4a00d6182039f96f245967995ca7b5212f9e69129d4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant723cbbf04242721afc663bc7a14ce6d1c341a7888ee547e8d676f2cc1f45e4d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4202fe6-49aa-ecca-1730-5bf9ef082587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Applicative.ext {F} :
    ∀ {A1 : Applicative F} {A2 : Applicative F} [@LawfulApplicative F A1] [@LawfulApplicative F A2],
      (∀ {α : Type u} (x : α), @Pure.pure _ A1.toPure _ x = @Pure.pure _ A2.toPure _ x) →
      (∀ {α β : Type u} (f : F (α → β)) (x : F α),
          @Seq.seq _ A1.toSeq _ _ f (fun _ => x) = @Seq.seq _ A2.toSeq _ _ f (fun _ => x)) →
      A1 = A2
  | { toFunctor := F1, seq := s1, pure := p1, seqLeft := sl1, seqRight := sr1 },
    { toFunctor := F2, seq := s2, pure := p2, seqLeft := sl2, seqRight := sr2 },
    L1, L2, H1, H2 => by
    obtain rfl : @p1 = @p2 := by
      funext α x
      apply H1
    obtain rfl : @s1 = @s2 := by
      funext α β f x
      exact H2 f (x Unit.unit)
    obtain ⟨seqLeft_eq1, seqRight_eq1, pure_seq1, -⟩ := L1
    obtain ⟨seqLeft_eq2, seqRight_eq2, pure_seq2, -⟩ := L2
    obtain rfl : F1 = F2 := by
      apply Functor.ext
      intros
      exact (pure_seq1 _ _).symm.trans (pure_seq2 _ _)
    congr <;> funext α β x y
    · exact (seqLeft_eq1 _ (y Unit.unit)).trans (seqLeft_eq2 _ _).symm
    · exact (seqRight_eq1 _ (y Unit.unit)).trans (seqRight_eq2 _ (y Unit.unit)).symm

end Lemmas

-- Porting note: we have a monad instance for `Id` but not `id`, mathport can't tell
-- which one is intended

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant723cbbf04242721afc663bc7a14ce6d1c341a7888ee547e8d676f2cc1f45e4d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variant723cbbf04242721afc663bc7a14ce6d1c341a7888ee547e8d676f2cc1f45e4d1.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6d80558fb7bdc746d70d808cca849061150843a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
