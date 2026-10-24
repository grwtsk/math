# Complete source: GRWTSK.Algebra.CommutativeAlgebra.TaylorModel.Variant3c75a7d9be8c39c949444e24762273cfff7f4c2005c7c964df787a8e6715ad7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f73238167ac4c834a03daa5f9fdaf9e564b8bbb4` · SHA-256 `ed6532714107457873a04ac32143439d32d0a9266127b6e0147151f97bf03811`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Core.Variant0ecd7e812ab07d0754fe7bc4814ac230898a6fc18535da97bb1b98841180b9b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ecd7e812ab07d0754fe7bc4814ac230898a6fc18535da97bb1b98841180b9b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Core.Variant0ecd7e812ab07d0754fe7bc4814ac230898a6fc18535da97bb1b98841180b9b8","mathematical_subject":"Algebra.Polynomials","original_sha256":"0ecd7e812ab07d0754fe7bc4814ac230898a6fc18535da97bb1b98841180b9b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Engine/TaylorModel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Engine.TaylorModel.Core
import LeanCert.Engine.TaylorModel.Functions
import LeanCert.Engine.TaylorModel.Expr

/-!
# Taylor Models

This file re-exports all Taylor model functionality. The implementation is split into:

* `TaylorModel.Core` - Core data structure, polynomial helpers, basic operations
* `TaylorModel.Functions` - Function-specific Taylor series (sin, cos, exp, etc.)
* `TaylorModel.Expr` - Composition operations and expression integration
-/

namespace GRWTSK.Algebra.CommutativeAlgebra.Core.Variant0ecd7e812ab07d0754fe7bc4814ac230898a6fc18535da97bb1b98841180b9b8

```
