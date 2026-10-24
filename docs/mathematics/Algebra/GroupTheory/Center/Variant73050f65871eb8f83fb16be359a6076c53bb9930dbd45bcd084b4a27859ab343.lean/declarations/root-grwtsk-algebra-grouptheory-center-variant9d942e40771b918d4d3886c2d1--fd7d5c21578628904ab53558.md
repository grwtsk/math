# _root_.GRWTSK.Algebra.GroupTheory.Center.Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.Group.commGroupOfCenterEqTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e823a30337b695b030756281071ff4c86b67d71eb0e2de07d39e2e59bf24196",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.Center.Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.Group.commGroupOfCenterEqTop",
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
  "slug": "root-grwtsk-algebra-grouptheory-center-variant9d942e40771b918d4d3886c2d1--fd7d5c21578628904ab53558",
  "source": {
    "blob": "9b84f9c9c29a34eca6f3796f56612629f2010630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 88,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd7d5c21578628904ab53558a0715e801be18a0ecc3cf180457c29dad14a571e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e823a30337b695b030756281071ff4c86b67d71eb0e2de07d39e2e59bf24196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.GroupTheory.Center.Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.Group.commGroupOfCenterEqTop (h : center G = ⊤) : CommGroup G :=
  { ‹Group G› with
    mul_comm := by
      rw [eq_top_iff'] at h
      intro x y
      apply Subgroup.mem_center_iff.mp _ x
      exact h y
  }

variable {H : Subgroup G}

section Normalizer

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b84f9c9c29a34eca6f3796f56612629f2010630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
