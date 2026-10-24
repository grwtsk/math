# Needs.addAndThen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbdefd36892106a3c72a0fc0b78c9d0ecb7a6de0bc03d949f0a942a77a53371f",
  "kind": "def",
  "lexical_name": "Needs.addAndThen",
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
  "slug": "needs-addandthen--e2b2f963a285fe19b9f7b492",
  "source": {
    "blob": "e79c161787ced9f1e634f69a6613b8748809c061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variantfd996146e907c869b4999e11bbe0fce45fff9da10dbf49b4241264a5b2bb637a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2b2f963a285fe19b9f7b492df1258fb2af2a24d4f69ac7a91e0cc59a16b72a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variantfd996146e907c869b4999e11bbe0fce45fff9da10dbf49b4241264a5b2bb637a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbdefd36892106a3c72a0fc0b78c9d0ecb7a6de0bc03d949f0a942a77a53371f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Needs.addAndThen (impTransDeps : Needs) (kImp : NeedsKind)
    (base : Needs := ∅) : Needs := Id.run do
  let mut composed := base
  -- `{ j [k⟩[kImp⟩ · | j, k s.t. (j [k⟩ ·) ∈ impTransDeps ∧ k.target = kImp.source }`
  if _ : kImp.isAll then
    for h : k in NeedsKind.toPrivate do
      composed := composed.union
        (k.andThen kImp (by simp; grind))
        (impTransDeps.get k)
  else
    for h : k in NeedsKind.toPublic do
      composed := composed.union
        (k.andThen kImp (by simp; grind))
        (impTransDeps.get k)
  return composed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variantfd996146e907c869b4999e11bbe0fce45fff9da10dbf49b4241264a5b2bb637a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variantfd996146e907c869b4999e11bbe0fce45fff9da10dbf49b4241264a5b2bb637a.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e79c161787ced9f1e634f69a6613b8748809c061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
