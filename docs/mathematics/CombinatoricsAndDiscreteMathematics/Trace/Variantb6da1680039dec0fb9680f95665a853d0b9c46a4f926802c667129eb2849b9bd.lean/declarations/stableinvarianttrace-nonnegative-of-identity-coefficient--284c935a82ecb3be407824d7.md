# stableInvariantTrace_nonnegative_of_identity_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401680119d81614c8f84b421ce29607304d29ba9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64535f09-6b76-decc-b8c9-b9c45a68cf45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a6eaf04-23ee-af56-c0db-bd007c1b6b1f",
  "kind": "theorem",
  "lexical_name": "stableInvariantTrace_nonnegative_of_identity_coefficient",
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
  "slug": "stableinvarianttrace-nonnegative-of-identity-coefficient--284c935a82ecb3be407824d7",
  "source": {
    "blob": "401680119d81614c8f84b421ce29607304d29ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:284c935a82ecb3be407824d713338735e332451db3a8bdd975c0f4e56335e8e2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a6eaf04-23ee-af56-c0db-bd007c1b6b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stableInvariantTrace_nonnegative_of_identity_coefficient
    {State Group : Type}
    [Fintype State] [Fintype Group]
    {kernel : MarkovKernel State}
    (invariant : InvariantLawCertificate kernel)
    (identity : Group)
    (element : CrossedProductElement State Group)
    (coefficientNonnegative :
      ∀ state, 0 ≤ element.coefficient identity state) :
    0 ≤ stableInvariantTrace invariant identity element :=
  canonicalTrace_nonnegative_of_identity_coefficient
    invariant.law identity element coefficientNonnegative

/-!
Full positivity on `A⋆A`, traciality, and action invariance require an admitted
crossed-product multiplication, involution, and automorphism action.  The
current finite coefficient model does not manufacture those operations.  The
following record makes the extra premises explicit and proof-bearing.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401680119d81614c8f84b421ce29607304d29ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
