# toInvSubmonoid_eq_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4ec3d6c2dd7deb2a96fa202f0bd60a90f0160eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48f2098d-7f4c-2889-b196-36dba4ba2ac2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca18708a-33c4-f990-1aa2-85e7f0dc4445",
  "kind": "theorem",
  "lexical_name": "toInvSubmonoid_eq_mk'",
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
  "slug": "toinvsubmonoid-eq-mk--d4ffe3e9ee3b5eee5b9fa2a3",
  "source": {
    "blob": "c4ec3d6c2dd7deb2a96fa202f0bd60a90f0160eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 89,
    "path": "GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4ffe3e9ee3b5eee5b9fa2a3e71ea1b47400d9058966038fa6ef3c202e4672aa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca18708a-33c4-f990-1aa2-85e7f0dc4445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInvSubmonoid_eq_mk' (x : M) : (toInvSubmonoid M S x : S) = mk' S 1 x := by
  rw [← (IsLocalization.map_units S x).mul_left_inj]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4ec3d6c2dd7deb2a96fa202f0bd60a90f0160eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
