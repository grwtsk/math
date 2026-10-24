# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75be0ef7416f5a8becfa71cd4d5b769933ad5c27bd9fff53e1513290c181703c",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--67fbf08cef2ef8d004213e5f",
  "source": {
    "blob": "4861ef74136948550d0ab4656c7b667851555876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 643,
    "line": 628,
    "path": "GRWTSK/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67fbf08cef2ef8d004213e5ff8219d7a129c26cfdc7bb45f2c15dc03a4797f4e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75be0ef7416f5a8becfa71cd4d5b769933ad5c27bd9fff53e1513290c181703c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–643.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
local macro "finsupp_map" : term =>
  `((Finsupp.mapRange.linearMap (Algebra.linearMap A B)).comp
    (Finsupp.lmapDomain A A (algebraMap A B)))

/--
Given the commutative diagram
```
A --→ B
↑     ↑
|     |
R --→ S
```
The kernel of the presentation `⊕ₓ B dx ↠ Ω_{B/S}` is spanned by the image of the
kernel of `⊕ₓ A dx ↠ Ω_{A/R}` and all `ds` with `s : S`.
See `kerTotal_map'` for the special case where `R = S`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4861ef74136948550d0ab4656c7b667851555876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
