# linearOrderOfModels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d9275a3b1529639dcf1245ec61923bc4f37b37bbcfae66fd3376088b8b2e32f",
  "kind": "def",
  "lexical_name": "linearOrderOfModels",
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
  "slug": "linearorderofmodels--6429321bab0bba990b665204",
  "source": {
    "blob": "a58e46eb2b02234912088531e12af84a54f21efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 387,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6429321bab0bba990b665204aa2fd598a22b97439b84a302887a26f1f440f86b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d9275a3b1529639dcf1245ec61923bc4f37b37bbcfae66fd3376088b8b2e32f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearOrderOfModels [h : M ⊨ L.linearOrderTheory]
    [DecidableRel (fun (a b : M) => Structure.RelMap (leSymb : L.Relations 2) ![a, b])] :
    LinearOrder M where
  __ := L.partialOrderOfModels M
  le_total := Relations.realize_total.1 ((Theory.model_iff _).1 h _
    (by simp only [linearOrderTheory, Set.mem_insert_iff, Set.mem_singleton_iff, true_or]))
  toDecidableLE := inferInstance

end structure_to_order

namespace order

variable [Language.order.Structure M] [LE M] [Language.order.OrderedStructure M]
  {N : Type*} [Language.order.Structure N] [LE N] [Language.order.OrderedStructure N]
  {F : Type*}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a58e46eb2b02234912088531e12af84a54f21efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
