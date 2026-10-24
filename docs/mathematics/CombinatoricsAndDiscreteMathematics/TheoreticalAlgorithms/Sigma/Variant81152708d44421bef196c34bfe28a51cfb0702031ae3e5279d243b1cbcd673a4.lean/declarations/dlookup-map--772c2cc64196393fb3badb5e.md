# dlookup_map₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eab73655-c02a-1ab5-1132-f6c734a896ea",
  "kind": "theorem",
  "lexical_name": "dlookup_map₂",
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
  "slug": "dlookup-map--772c2cc64196393fb3badb5e",
  "source": {
    "blob": "db61810f06a57c2d288ca5ed3d3d06ca2b95a77f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 233,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant81152708d44421bef196c34bfe28a51cfb0702031ae3e5279d243b1cbcd673a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:772c2cc64196393fb3badb5eda878a521800d853f344ad0d3a2c2ef68d116a92",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant81152708d44421bef196c34bfe28a51cfb0702031ae3e5279d243b1cbcd673a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eab73655-c02a-1ab5-1132-f6c734a896ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem dlookup_map₂ {γ δ : α → Type*} {l : List (Σ a, γ a)} {f : ∀ a, γ a → δ a} (a : α) :
    (l.map (.map id f) : List (Σ a, δ a)).dlookup a = (l.dlookup a).map (f a) :=
  dlookup_map l Function.injective_id _ _

#adaptation_note /-- Before leanprover/lean4#13166
the grind proof here worked, but after changes to the canonicalizer it now times out.
Changes to grind attributes in Batteries in
https://github.com/leanprover-community/batteries/pull/1744
may allow restoring the original proof:
```
  induction l with
  | nil => grind [nodupKeys_nil]
  | cons hd tl =>
    have := dlookup_map₁ tl hf hd.fst
    grind [dlookup_isSome, → notMem_keys_of_nodupKeys_cons, nodupKeys_of_nodupKeys_cons,
      nodupKeys_cons]
```
-/
omit [DecidableEq α] [DecidableEq α'] in
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant81152708d44421bef196c34bfe28a51cfb0702031ae3e5279d243b1cbcd673a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant81152708d44421bef196c34bfe28a51cfb0702031ae3e5279d243b1cbcd673a4.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db61810f06a57c2d288ca5ed3d3d06ca2b95a77f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
