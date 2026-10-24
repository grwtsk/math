# chooseX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65f890608419d4958a4704a25b328b43ff52164355d238f67499a85c6bb18e2b",
  "kind": "def",
  "lexical_name": "chooseX",
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
  "slug": "choosex--cf5ef04c19007ca8ebe46db8",
  "source": {
    "blob": "3bdae49dc0f678ac3fbfdabcb50e2eacd6530831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 275,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantb2ce214c2a3e255535f3c319d705368d4a2894fc92b7cf77f8c80efed4cc408c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf5ef04c19007ca8ebe46db8b92c10f4c3f80077f5ffaa9f40b6f0bb079cad85",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantb2ce214c2a3e255535f3c319d705368d4a2894fc92b7cf77f8c80efed4cc408c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65f890608419d4958a4704a25b328b43ff52164355d238f67499a85c6bb18e2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chooseX : ∀ l : List α, ∀ _ : ∃ a, a ∈ l ∧ p a, { a // a ∈ l ∧ p a }
  | [], hp => False.elim (Exists.elim hp fun _ h => not_mem_nil h.left)
  | l :: ls, hp =>
    if pl : p l then ⟨l, ⟨mem_cons.mpr <| Or.inl rfl, pl⟩⟩
    else
      -- pattern matching on `hx` too makes this not reducible!
      let ⟨a, ha⟩ :=
        chooseX ls
          (hp.imp fun _ ⟨o, h₂⟩ => ⟨(mem_cons.mp o).resolve_left fun e => pl <| e ▸ h₂, h₂⟩)
      ⟨a, mem_cons.mpr <| Or.inr ha.1, ha.2⟩

/-- Given a decidable predicate `p` and a proof of existence of `a ∈ l` such that `p a`,
choose the first element with this property. This version returns `a : α`, and properties
are given by `choose_mem` and `choose_property`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantb2ce214c2a3e255535f3c319d705368d4a2894fc92b7cf77f8c80efed4cc408c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantb2ce214c2a3e255535f3c319d705368d4a2894fc92b7cf77f8c80efed4cc408c.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bdae49dc0f678ac3fbfdabcb50e2eacd6530831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
