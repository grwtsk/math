# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.Fintype.truncEncodable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:523675a7a8bbde09489d5a5a046417a44c04ea48ffcbec49c2cdb2aa72422707",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.Fintype.truncEncodable",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-listequivofequiv-variant--86563d61c4e5af55970ccf08",
  "source": {
    "blob": "fb6f97387c4854ae3d69ace3fb38d6b544dee7f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variantc3bc6e9e1cce21478a9e9499ad68dd08be74bbc88c6b0933a6299e1ffd790605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86563d61c4e5af55970ccf08d8fd687de19dc63e5d86532a4741d99faedb9972",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/List/Variantc3bc6e9e1cce21478a9e9499ad68dd08be74bbc88c6b0933a6299e1ffd790605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:523675a7a8bbde09489d5a5a046417a44c04ea48ffcbec49c2cdb2aa72422707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.Fintype.truncEncodable (α : Type*) [DecidableEq α] [Fintype α] : Trunc (Encodable α) :=
  @Quot.recOnSubsingleton _ _ (fun s : Multiset α => (∀ x : α, x ∈ s) → Trunc (Encodable α)) _
    Finset.univ.1 (fun l H => Trunc.mk <| encodableOfList l H) Finset.mem_univ

/-- A noncomputable way to arbitrarily choose an ordering on a finite type.
It is not made into a global instance, since it involves an arbitrary choice.
This can be locally made into an instance with `attribute [local instance] Fintype.toEncodable`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/List/Variantc3bc6e9e1cce21478a9e9499ad68dd08be74bbc88c6b0933a6299e1ffd790605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variantc3bc6e9e1cce21478a9e9499ad68dd08be74bbc88c6b0933a6299e1ffd790605.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb6f97387c4854ae3d69ace3fb38d6b544dee7f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
