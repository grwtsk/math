# manual_cert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eddfd194942e4981cce2823d0d2c6495fe38de014e339209df212e1cdfa0dacf",
  "kind": "def",
  "lexical_name": "manual_cert",
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
  "slug": "manual-cert--87886e9116fb417bd868afda",
  "source": {
    "blob": "74e3184828aafc3d837d7c1dfc033378a994214d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Li2CertificateTest/Variant3e06cbfe429fae4db0663536452d49113dc44c9f64e2de85784c35bd883f3df0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87886e9116fb417bd868afdae93fe8240f09f89093232add7242e54bd2122cc9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Li2CertificateTest/Variant3e06cbfe429fae4db0663536452d49113dc44c9f64e2de85784c35bd883f3df0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eddfd194942e4981cce2823d0d2c6495fe38de014e339209df212e1cdfa0dacf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def manual_cert : IntegralCertificate :=
  { expr_id := "g_alt_test"
    domain := small_interval
    partitions := [manual_entry]
  }

-- Debug: Check each component of verification individually
-- First, let's verify the partition entry is created correctly
#eval do
  let entry := manual_entry
  IO.println s!"Entry domain: [{entry.domain.lo}, {entry.domain.hi}]"
  IO.println s!"Entry bound: [{entry.bound.lo}, {entry.bound.hi}]"

-- The single partition check should work
-- example : checkPartitionBound g_alt_expr manual_entry = true := by native_decide
#eval checkPartitionBound g_alt_expr manual_entry

-- Coverage check passes (single partition covers the domain)
-- example : checkCoverage manual_cert.partitions manual_cert.domain = true := by native_decide
#eval checkCoverage manual_cert.partitions manual_cert.domain

-- All bounds check passes
-- example : checkAllBounds g_alt_expr manual_cert.partitions = true := by native_decide
#eval checkAllBounds g_alt_expr manual_cert.partitions

-- Check sum computation
#eval do
  let sum := sumBounds manual_cert.partitions
  IO.println s!"Sum of bounds: [{sum.lo}, {sum.hi}]"

-- Check target containment (need large target for single-partition case)
#eval checkSumInTarget manual_cert.partitions ⟨-100, 100, by norm_num⟩

-- Full verification with large target
#eval verifyCertificate g_alt_expr manual_cert ⟨-100, 100, by norm_num⟩

-- Verified example with native_decide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Li2CertificateTest/Variant3e06cbfe429fae4db0663536452d49113dc44c9f64e2de85784c35bd883f3df0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Li2CertificateTest/Variant3e06cbfe429fae4db0663536452d49113dc44c9f64e2de85784c35bd883f3df0.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74e3184828aafc3d837d7c1dfc033378a994214d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
