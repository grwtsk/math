# subsingletonEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4eb1ba13bead48e677771f15ee3e38f7caa4f5cce7a3a1f54428aef690e5de96",
  "kind": "def",
  "lexical_name": "subsingletonEquiv",
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
  "slug": "subsingletonequiv--8ae54837e534799da06bbf11",
  "source": {
    "blob": "3e14da250d25792008faaaf220d8d578be00c961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3088,
    "line": 3077,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta50d95c6b823ac35e6d3ae030158eeb85c7ae4545e26916f3b36b1cd1f934a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ae54837e534799da06bbf11ccd63acd3884f2d4a49086322bbdae37dfd4e139",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta50d95c6b823ac35e6d3ae030158eeb85c7ae4545e26916f3b36b1cd1f934a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4eb1ba13bead48e677771f15ee3e38f7caa4f5cce7a3a1f54428aef690e5de96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3077–3088.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subsingletonEquiv [Subsingleton α] : List α ≃ Multiset α where
  toFun := ofList
  invFun :=
    (Quot.lift id) fun (a b : List α) (h : a ~ b) =>
      (List.ext_nthLe h.length_eq) fun _ _ _ => Subsingleton.elim _ _
  left_inv _ := rfl
  right_inv m := Quot.inductionOn m fun _ => rfl
#align multiset.subsingleton_equiv Multiset.subsingletonEquiv

variable {α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta50d95c6b823ac35e6d3ae030158eeb85c7ae4545e26916f3b36b1cd1f934a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta50d95c6b823ac35e6d3ae030158eeb85c7ae4545e26916f3b36b1cd1f934a70.lean#L3077).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e14da250d25792008faaaf220d8d578be00c961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
