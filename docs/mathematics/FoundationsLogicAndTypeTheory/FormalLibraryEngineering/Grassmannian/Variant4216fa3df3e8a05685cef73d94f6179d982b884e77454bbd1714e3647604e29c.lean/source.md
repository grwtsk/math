# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grassmannian.Variant4216fa3df3e8a05685cef73d94f6179d982b884e77454bbd1714e3647604e29c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `222f676efa1f2321a38a37d5ce9de47c8c39bd02` · SHA-256 `6ebd66a9ce772bf85fc242c366fce0ffdbebe91bec4025712c63dba9994aa386`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedMinors.Variant4bc7284dc5f86971455a174927835df1474a6e4ad6cd201a80d21831a7861bfd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bc7284dc5f86971455a174927835df1474a6e4ad6cd201a80d21831a7861bfd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OrderedMinors.Variant4bc7284dc5f86971455a174927835df1474a6e4ad6cd201a80d21831a7861bfd","mathematical_subject":"Foundations.Unclassified","original_sha256":"4bc7284dc5f86971455a174927835df1474a6e4ad6cd201a80d21831a7861bfd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/Grassmannian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors
import FormalResearch.PositiveAtlas.Grassmannian.Plucker24
import FormalResearch.PositiveAtlas.Grassmannian.Fixtures
import FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures
import FormalResearch.PositiveAtlas.Grassmannian.RecognitionFixtures

import FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian
import FormalResearch.PositiveAtlas.Grassmannian.QuotientConvention

/-!
# Positive-Grassmannian realization program

The first layer contains actual ordered determinants, row-change gauge laws,
normalized Gr(2,4) coordinate recognition, full-rank pivot existence,
projective recognition for actual full-rank frames, and obstruction fixtures.

The generic Positive Atlas remains independent of this specialization. Abstract
Pluecker-tuple realizability, network realization, determinantal analysis,
certificate-preserving recognition, and global topological/metric coverage remain
separately tracked obligations. Recognition of actual full-rank row spaces
is not the full Atlas certificate equivalence.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedMinors.Variant4bc7284dc5f86971455a174927835df1474a6e4ad6cd201a80d21831a7861bfd

```
