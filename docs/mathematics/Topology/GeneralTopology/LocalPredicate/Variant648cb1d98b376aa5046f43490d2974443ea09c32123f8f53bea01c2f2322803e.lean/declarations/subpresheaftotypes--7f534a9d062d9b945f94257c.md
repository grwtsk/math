# subpresheafToTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb01709b1bcf81db2058a87a1b74b951e4e1a9b0ea5d4324d721a1e32a864b4e",
  "kind": "def",
  "lexical_name": "subpresheafToTypes",
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
  "slug": "subpresheaftotypes--7f534a9d062d9b945f94257c",
  "source": {
    "blob": "aaae3065a8daa5594b2ec39c41b4c942b2fe018a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 162,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f534a9d062d9b945f94257c6e988df5f4e27f3a0a3082c724a777761eef79bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb01709b1bcf81db2058a87a1b74b951e4e1a9b0ea5d4324d721a1e32a864b4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subpresheafToTypes (P : PrelocalPredicate T) : Presheaf (Type _) X where
  obj U := { f : ∀ x : U.unop , T x // P.pred f }
  map {_ _} i f := ⟨fun x ↦ f.1 (i.unop x), P.res i.unop f.1 f.2⟩

namespace subpresheafToTypes

variable (P : PrelocalPredicate T)

/-- The natural transformation including the subpresheaf of functions satisfying a local predicate
into the presheaf of all functions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant648cb1d98b376aa5046f43490d2974443ea09c32123f8f53bea01c2f2322803e.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaae3065a8daa5594b2ec39c41b4c942b2fe018a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
