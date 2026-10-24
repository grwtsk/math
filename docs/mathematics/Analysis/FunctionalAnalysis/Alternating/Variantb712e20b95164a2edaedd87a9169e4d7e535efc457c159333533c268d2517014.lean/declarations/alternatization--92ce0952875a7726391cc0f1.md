# alternatization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7468fafa53c39da7e21161dbb09b15d8f892f83d577c4b9890298089c10e8ffd",
  "kind": "def",
  "lexical_name": "alternatization",
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
  "slug": "alternatization--92ce0952875a7726391cc0f1",
  "source": {
    "blob": "742aa511fe50362301d444582e4312986c4b5b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 596,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Alternating/Variantb712e20b95164a2edaedd87a9169e4d7e535efc457c159333533c268d2517014.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92ce0952875a7726391cc0f11d4120f07f18a58756f717a4948d7dd3cc676b3b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Alternating/Variantb712e20b95164a2edaedd87a9169e4d7e535efc457c159333533c268d2517014.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7468fafa53c39da7e21161dbb09b15d8f892f83d577c4b9890298089c10e8ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def alternatization : ContinuousMultilinearMap R (fun _ : ι => M) N →+ M [Λ^ι]→L[R] N where
  toFun f :=
    { toContinuousMultilinearMap := ∑ σ : Equiv.Perm ι, Equiv.Perm.sign σ • f.domDomCongr σ
      map_eq_zero_of_eq' := fun v i j hv hne => by
        simpa [MultilinearMap.alternatization_apply]
          using f.1.alternatization.map_eq_zero_of_eq' v i j hv hne }
  map_zero' := by ext; simp
  map_add' _ _ := by ext; simp [Finset.sum_add_distrib]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Alternating/Variantb712e20b95164a2edaedd87a9169e4d7e535efc457c159333533c268d2517014.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Alternating/Variantb712e20b95164a2edaedd87a9169e4d7e535efc457c159333533c268d2517014.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `742aa511fe50362301d444582e4312986c4b5b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
