# adjoin_induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fde72a33e1248c4ecf93774158163ac70abcf3a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 547,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1df5313da93269becbd5a0e2018059d05e546e5ca6650490b051dd4ee910b767.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6af90b6-d9a0-4383-2082-84442a8063cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4a62697-6c57-204b-7ce1-8273397a9977",
  "kind": "lemma",
  "lexical_name": "adjoin_induction'",
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
  "slug": "adjoin-induction--3b14b8552b8028ac8491a27d",
  "source": {
    "blob": "fde72a33e1248c4ecf93774158163ac70abcf3a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 547,
    "path": "GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant1df5313da93269becbd5a0e2018059d05e546e5ca6650490b051dd4ee910b767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b14b8552b8028ac8491a27d24796fdb0cfa4ead61b5ee71e80529e10dd507fd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant1df5313da93269becbd5a0e2018059d05e546e5ca6650490b051dd4ee910b767.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4a62697-6c57-204b-7ce1-8273397a9977`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma adjoin_induction' {s : Set A} {p : adjoin R s → Prop} (a : adjoin R s)
  (Hs : ∀ x (h : x ∈ s), p ⟨x, subset_adjoin R h⟩)
  (Hadd : ∀ x y, p x → p y → p (x + y)) (H0 : p 0)
  (Hmul : ∀ x y, p x → p y → p (x * y)) (Hsmul : ∀ (r : R) x, p x → p (r • x)) : p a :=
Subtype.recOn a <| fun b hb => by
  refine Exists.elim ?_ (fun (hb : b ∈ adjoin R s) (hc : p ⟨b, hb⟩) => hc)
  apply adjoin_induction hb
  · exact fun x hx => ⟨subset_adjoin R hx, Hs x hx⟩
  · exact fun x y hx hy => Exists.elim hx <| fun hx' hx => Exists.elim hy <| fun hy' hy =>
      ⟨add_mem hx' hy', Hadd _ _ hx hy⟩
  · exact ⟨_, H0⟩
  · exact fun x y hx hy => Exists.elim hx <| fun hx' hx => Exists.elim hy <| fun hy' hy =>
      ⟨mul_mem hx' hy', Hmul _ _ hx hy⟩
  · exact fun r x hx => Exists.elim hx <| fun hx' hx => ⟨SMulMemClass.smul_mem r hx', Hsmul r _ hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant1df5313da93269becbd5a0e2018059d05e546e5ca6650490b051dd4ee910b767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant1df5313da93269becbd5a0e2018059d05e546e5ca6650490b051dd4ee910b767.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fde72a33e1248c4ecf93774158163ac70abcf3a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
