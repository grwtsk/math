# set_next_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b285fc3a-30d7-e0eb-a261-9d4b6c6af040",
  "kind": "theorem",
  "lexical_name": "set_next_add",
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
  "slug": "set-next-add--9f9a697b204966690fdbafbc",
  "source": {
    "blob": "d607ef1e6584b8d956976e8a61fc31d58ab3fe9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f9a697b204966690fdbafbcc47894a8eeceed36ec0ae21adf845cfb96d20bfa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b285fc3a-30d7-e0eb-a261-9d4b6c6af040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem set_next_add (s : String) (i : Pos.Raw) (c : Char) (b₁ b₂)
    (h : (i.next s).1 + b₁ = s.rawEndPos.1 + b₂) :
  (i.next (i.set s c)).1 + b₁ = (i.set s c).rawEndPos.1 + b₂ := by
  simp [Pos.Raw.next, Pos.Raw.get, Pos.Raw.set, rawEndPos, ← utf8ByteSize'_eq, utf8ByteSize'] at h ⊢
  rw [Nat.add_comm i.1, Nat.add_assoc] at h ⊢
  let rec foo : ∀ cs a b₁ b₂,
    (Pos.Raw.utf8GetAux cs a i).utf8Size + b₁ = utf8ByteSize'.go cs + b₂ →
    (Pos.Raw.utf8GetAux (Pos.Raw.utf8SetAux c cs a i) a i).utf8Size + b₁ =
      utf8ByteSize'.go (Pos.Raw.utf8SetAux c cs a i) + b₂
  | [], _, _, _, h => h
  | c'::cs, a, b₁, b₂, h => by
    unfold Pos.Raw.utf8SetAux
    apply iteInduction (motive := fun p =>
        (Pos.Raw.utf8GetAux p a i).utf8Size + b₁ = utf8ByteSize'.go p + b₂) <;>
      intro h' <;> simp [Pos.Raw.utf8GetAux, h', utf8ByteSize'.go] at h ⊢
    next =>
      rw [Nat.add_assoc, Nat.add_left_comm] at h ⊢; rw [Nat.add_left_cancel h]
    next =>
      rw [Nat.add_assoc] at h ⊢
      refine foo cs (a + c') b₁ (c'.utf8Size + b₂) h
  exact foo s.toList 0 _ _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d607ef1e6584b8d956976e8a61fc31d58ab3fe9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
