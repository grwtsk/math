# advance_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:209f0370-d81c-0a3b-7a59-fd8ad4666886",
  "kind": "theorem",
  "lexical_name": "advance_half",
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
  "slug": "advance-half--a8d5c1c71a221a18cf308287",
  "source": {
    "blob": "68a18bf167ec625c0ba80015abe96b4d64f04b94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 136,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d5c1c71a221a18cf3082873b2d3dc6e48cc3a3daeeba96dc7fc5466bfd9416",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:209f0370-d81c-0a3b-7a59-fd8ad4666886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem advance_half (h : ℕ+) (p : CoverPhase h) :
    advance h p (h : ℕ) = antipode h p :=
  rfl

namespace StepSystem

variable {h : ℕ+}

/--
Transport concatenates: first traverse `m` edges from `p`, then traverse `n`
edges from the reached phase.  Keeping the count in `Nat` makes repeated full
circuits, rather than only the residue modulo `cycleLength h`, observable in
the fiber map.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a18bf167ec625c0ba80015abe96b4d64f04b94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
